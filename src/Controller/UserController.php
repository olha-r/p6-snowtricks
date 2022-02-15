<?php

namespace App\Controller;

use App\Entity\User;
use App\Form\ProfileType;
use App\Form\UserType;
use App\Repository\UserRepository;
use App\Service\UploadService;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bridge\Twig\Mime\TemplatedEmail;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\File\Exception\FileException;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Mailer\MailerInterface;
use Symfony\Component\Mime\Email;
use Symfony\Component\PasswordHasher\Hasher\UserPasswordHasherInterface;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\String\Slugger\AsciiSlugger;

class UserController extends AbstractController
{
    /**
     * @Route("/inscription", name="registration", methods={"GET", "POST"})
     */
    public function registration(Request $request, EntityManagerInterface $entityManager, UserPasswordHasherInterface $passwordHasher, MailerInterface $mailer): Response
    {
        $user = new User();
        $form = $this->createForm(UserType::class, $user);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $token = md5(random_bytes(10));
            $user->setToken($token);

            $hash = $passwordHasher->hashPassword($user, $user->getPassword());
            $user->setPassword($hash);


            $entityManager->persist($user);
            $entityManager->flush();

            // $this->sendActivationEmail($token);
            $email = (new TemplatedEmail())
                ->from('contact@mail.com')
                ->to($user->getEmail())
                ->subject('Nouveau compte')
                ->htmlTemplate('emails/activation.html.twig')
                ->context([
                    'token' => $token
                ]);

            $mailer->send($email);

            $this->addFlash(
                'primary',
                'Félicitations! Vous êtes enregistrer avec succès. Vérifiez votre e-mail pour confirmer la création du compte.'
            );

            return $this->redirectToRoute('app_login', [], Response::HTTP_SEE_OTHER);

        }

        return $this->renderForm('user/registration.html.twig', [
            'user' => $user,
            'form' => $form,
        ]);

    }

//    public function sendActivationEmail($token, MailerInterface $mailer, User $user):Response
//    {
//        $email = (new TemplatedEmail())
//            ->from('contact@mail.com')
//            ->to($user->getEmail())
//            ->subject('Nouveau compte')
//            ->htmlTemplate('emails/activation.html.twig')
//            ->context([
//                'token'=>$token
//            ]);
//
//        $mailer->send($email);
//    }

    /**
     * @Route("/activation/{token}", name="activation")
     */
    public function activation($token, UserRepository $userRepository, EntityManagerInterface $entityManager): Response
    {
        // On recherche si un utilisateur avec ce token existe dans la base de données

        $user = $userRepository->findOneBy(['token' => $token]);

        // Si aucun utilisateur n'est associé à ce token
        if (!$user) {
            // On renvoie une erreur 404
            throw $this->createNotFoundException('Cet utilisateur n\'existe pas');
        } else {
            // On supprime le token
            $user->setToken('');

            $entityManager->persist($user);
            $entityManager->flush();

            // On génère un message
            $this->addFlash('info', 'Utilisateur activé avec succès');

            // On retourne à l'accueil
            return $this->redirectToRoute('home');
        }

    }

    /**
     * @Route("/profile/{username}", name="user_profile", methods={"GET", "POST"})
     */
    public function userProfile(User $user): Response
    {
        return $this->render('user/profile.html.twig', [
            'user' => $user,
        ]);
    }

    /**
     * @Route("profile/{username}/edit", name="profile_edit", methods={"GET", "POST"})
     */
    public function editProfile(Request $request, User $user, EntityManagerInterface $entityManager, UploadService $upload): Response
    {

        $form = $this->createForm(ProfileType::class, $user);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $photo = $form->get('userPicture')->getData();
            if ($photo) {
                $fileName = $upload->upload($photo);
                $user->setUserPicture($fileName);
            }

            $entityManager->persist($user);
            $entityManager->flush();

            return $this->redirectToRoute('user_profile',  ['username' => $user->getUsername()], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('user/edit_profile.html.twig', [
            'user' => $user,
            'form' => $form,
        ]);
    }



}
