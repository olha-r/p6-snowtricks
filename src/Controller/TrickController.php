<?php

namespace App\Controller;

use App\Entity\Comment;
use App\Entity\Media;
use App\Entity\Trick;
use App\Entity\Video;
use App\Form\CommentType;
use App\Form\TrickType;
use App\Repository\CommentRepository;
use App\Repository\TrickRepository;
use App\Service\PaginationService;
use Doctrine\ORM\EntityManager;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Security\Core\Security;
use Symfony\Component\String\Slugger\AsciiSlugger;

/**
 * @Route("/trick")
 */
class TrickController extends AbstractController
{

    /**
     * @Route("/page/{page<\d+>}", name="trick_page", methods={"GET"})
     * @Route("/page/{page<\d+>}/{limit}-per-page", name="trick_page_with_limit", methods={"GET"})
     */
    public function renderPaginatedTricks(TrickRepository $trickRepository, PaginationService $pagination, $page = 1)
    {
        $limit = 6;
        $queryBuilder = $trickRepository->createQueryBuilder('t')
            ->orderBy('t.createdAt', 'DESC')
        ;

        $options = $pagination->getRenderOptions('tricks', $queryBuilder, $limit, $page);

        return $this->render('trick/list.html.twig', $options);
    }

    /**
     * @Route("/new", name="trick_new", methods={"GET", "POST"})
     */
    public function new(Request $request, EntityManagerInterface $entityManager, Security $security): Response
    {
        $trick = new Trick();
        $form = $this->createForm(TrickType::class, $trick);
        $form->handleRequest($request);
        $slugger = new AsciiSlugger();


        if ($form->isSubmitted() && $form->isValid()) {
            $trick->setUser($security->getUser())
                ->setCreatedAt(new \DateTime())
                ->setUpdatedAt(new \DateTime())
                ->setSlug($slugger->slug($trick->getName()))
            ;
            $medias = $form->get('medias')->getData();
            foreach ($medias as $m) {
                //File name generation
                $file = md5(uniqid()) . '.' . $m->guessExtension();
                //Copying the file to the 'uploads' folder
                $m->move(
                    $this->getParameter('media_directory'),
                    $file
                );
                //we store media file in the database
                $media = new Media();
                $media->setName($file);
                $trick->addMedia($media);
            }

            $videos = $form->get('videos')->getData();
            foreach ($videos as $video) {
                $video = new Video();
                $video->setName(md5(uniqid()));
$trick->addVideo($video);
            }
            $entityManager->persist($trick);
            $entityManager->flush();

            return $this->redirectToRoute('trick_show', ['id' => $trick->getId()], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('trick/new.html.twig', [
            'trick' => $trick,
            'form' => $form,
        ]);
    }

    /**
     * @Route("/{slug}", name="trick_show", methods={"GET", "POST"})
     */

    public function show($slug, Trick $trick, CommentRepository $commentRepository, EntityManagerInterface $entityManager, Request $request, Security $security): Response
    {
        $comment = $commentRepository->findBy([
            'trick' => $trick->getId()
        ]);
        $new_comment = new Comment();
        $form = $this->createForm(CommentType::class, $new_comment);

        $form->handleRequest($request);
        if ($form->isSubmitted() && $form->isValid()) {

            $new_comment->setCreatedAt(new \DateTime())
                ->setTrick($trick)
                ->setUser($security->getUser())
                ->setContent($new_comment->getContent());
            $entityManager->persist($new_comment);
            $entityManager->flush();

            return $this->redirectToRoute('trick_show', ['slug' => $trick->getSlug()]);

        }

        return $this->renderForm('trick/show.html.twig', [
            'trick' => $trick,
            'comments' => $comment,
            'commentForm' => $form
        ]);
    }

    /**
     * @Route("/{slug}/edit", name="trick_edit", methods={"GET", "POST"})
     */
    public function edit(Request $request, Trick $trick, EntityManagerInterface $entityManager): Response
    {
        $form = $this->createForm(TrickType::class, $trick);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $trick->setUpdatedAt(new \DateTime());

            $medias = $form->get('medias')->getData();
            foreach ($medias as $m) {
                //File name generation
                $file = md5(uniqid()) . '.' . $m->guessExtension();
                //Copying the file to the 'uploads' folder
                $m->move(
                    $this->getParameter('media_directory'),
                    $file
                );
                //we store media file in the database
                $media = new Media();
                $media->setName($file);
                $trick->addMedia($media);
            }

            $videos = $form->get('videos')->getData();
            foreach ($videos as $video) {
                $video = new Video();
                $video->setName(md5(uniqid()));
                $trick->addVideo($video);
                    }
            $entityManager->flush();

            return $this->redirectToRoute('trick_show', ['slug' => $trick->getSlug()], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('trick/edit.html.twig', [
            'trick' => $trick,
            'form' => $form,
        ]);
    }

    /**
     * @Route("/{slug}", name="trick_delete", methods={"POST"})
     */
    public function delete(Request $request, Trick $trick, EntityManagerInterface $entityManager): Response
    {

        if ($this->isCsrfTokenValid('delete' . $trick->getSlug(), $request->request->get('_token'))) {
            $entityManager->remove($trick);
            $entityManager->flush();
        }

        return $this->redirectToRoute('home', [], Response::HTTP_SEE_OTHER);
    }
//
//    /**
//     * @Route("/delete/media/{id}", name="trick_delete_media", methods={"DELETE"})
//     */
//    public function deleteMedias(Media $media, Request $request, EntityManagerInterface $entityManager)
//    {
//        $data = json_decode($request->getContent(), true);
//        if ($this->isCsrfTokenValid('delete'.$media->getId(), $data['_token'])){
//            $name = $media->getName();
//            unlink($this->getParameter('media_directory').'/'.$name);
//
//            $entityManager->remove($media);
//            $entityManager->flush();
//
//            return new JsonResponse(['success' => 1]);
//        }
//        else {
//            return new JsonResponse(['error' => 'Token Invalid'], 400);
//        }
//    }

}
