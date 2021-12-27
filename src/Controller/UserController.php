<?php

namespace App\Controller;

use App\Entity\User;
use App\Form\UserType;
use App\Repository\UserRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bridge\Twig\Mime\TemplatedEmail;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Mailer\MailerInterface;
use Symfony\Component\Mime\Email;
use Symfony\Component\PasswordHasher\Hasher\UserPasswordHasherInterface;
use Symfony\Component\Routing\Annotation\Route;

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
            $this->addFlash('message', 'Utilisateur activé avec succès');

            // On retourne à l'accueil
            return $this->redirectToRoute('home');
        }

    }
}
