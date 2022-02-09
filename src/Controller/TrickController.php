<?php

namespace App\Controller;

use App\Entity\Comment;
use App\Entity\Media;
use App\Entity\Trick;
use App\Entity\Video;
use App\Form\CommentType;
use App\Form\TrickType;
use App\Repository\CommentRepository;
use App\Repository\MediaRepository;
use App\Repository\TrickRepository;
use App\Repository\VideoRepository;
use App\Service\PaginationService;
use App\Service\UploadService;
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
            ->orderBy('t.createdAt', 'DESC');

        $options = $pagination->getRenderOptions('tricks', $queryBuilder, $limit, $page);
        return $this->render('trick/list.html.twig', $options);
    }

    /**
     * @Route("/new", name="trick_new", methods={"GET", "POST"})
     */
    public function new(Request $request, EntityManagerInterface $entityManager, Security $security, UploadService $upload): Response
    {
        $trick = new Trick();
        $form = $this->createForm(TrickType::class, $trick);
        $form->handleRequest($request);
        $slugger = new AsciiSlugger();

        if ($form->isSubmitted() && $form->isValid()) {

            $trick->setUser($security->getUser())
                ->setCreatedAt(new \DateTime())
                ->setUpdatedAt(new \DateTime())
                ->setSlug($slugger->slug($trick->getName()));
            $entityManager->persist($trick);
            $entityManager->flush();

            //Get media files
            $medias = $form->get('medias')->getData();
            foreach ($medias as $media) {
                $file = $upload->upload($media);
                //we store media file in the database
                $media = new Media();
                $media->setName($file);
                $media->setTrick($trick);
                $entityManager->persist($media);
                $entityManager->flush();
            }

            // Get videos Url
            $videoUrl = $form->get('videos')->getData();
//            dd($videoUrl);
//                foreach ($videos as $videoUrl) {
                    $video = new Video();
                    $video->setVideoUrl($videoUrl);
                    $video->setTrick($trick);
            $entityManager->persist($video);
            $entityManager->flush();
//                }

//            $videos = $form->get('videos')->getData();
//            foreach ($videos as $video) {
//                $video = new Video();
//                $video->setName(md5(uniqid()));
//$trick->addVideo($video);
            //       }

            return $this->redirectToRoute('trick_show', ['slug' => $trick->getSlug()], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('trick/new.html.twig', [
            'trick' => $trick,
            'form' => $form
        ]);
    }

    /**
     * @Route("/{slug}/delete", name="trick_delete", methods={"POST"})
     */
    public function delete(Request $request, Trick $trick, EntityManagerInterface $entityManager): Response
    {

        if ($this->isCsrfTokenValid('delete' . $trick->getSlug(), $request->request->get('_token'))) {
            $entityManager->remove($trick);
            $entityManager->flush();
        }

        return $this->redirectToRoute('home', [], Response::HTTP_SEE_OTHER);
    }

    /**
     * @Route("/{slug}", name="trick_show", methods={"GET", "POST"})
     */
    public function show($slug, Trick $trick, MediaRepository $media, VideoRepository $video, CommentRepository $commentRepository, EntityManagerInterface $entityManager, Request $request, Security $security): Response
    {
        $user = $security->getUser();
        $medias = $media->findBy(['trick' => $trick]);
        $video = $video->findOneBy(['trick' => $trick]);
//        dd($videos);
        $comment = $commentRepository->findBy([
            'trick' => $trick->getId()
        ]);

        //Add comments
        $new_comment = new Comment();
        $form = $this->createForm(CommentType::class, $new_comment);

        $form->handleRequest($request);
        if ($form->isSubmitted() && $form->isValid()) {

            $new_comment->setCreatedAt(new \DateTime())
                ->setTrick($trick)
                ->setUser($user)
                ->setContent($new_comment->getContent());
            $entityManager->persist($new_comment);
            $entityManager->flush();
            return $this->redirectToRoute('trick_show', ['slug' => $trick->getSlug()]);
        }

        return $this->renderForm('trick/show.html.twig', [
            'trick' => $trick,
            'comments' => $comment,
            'commentForm' => $form,
            'medias' => $medias,
            'video' => $video
        ]);
    }

    /**
     * @Route("/{slug}/edit", name="trick_edit", methods={"GET", "POST"})
     */
    public function edit(Request $request, Trick $trick, MediaRepository $media, EntityManagerInterface $entityManager, UploadService $upload): Response
    {
        $form = $this->createForm(TrickType::class, $trick);
        $form->handleRequest($request);
        $medias = $media->findBy(['trick' => $trick]);
        if ($form->isSubmitted() && $form->isValid()) {
            $trick->setUpdatedAt(new \DateTime());

            $entityManager->persist($trick);
            $entityManager->flush();
            $medias = $form->get('medias')->getData();
            foreach ($medias as $media) {
                $file = $upload->upload($media);
                //we store media file in the database
                $media = new Media();
                $media->setName($file);
                $media->setTrick($trick);
                $entityManager->persist($media);
                $entityManager->flush();
            }
            return $this->redirectToRoute('trick_show', ['slug' => $trick->getSlug()], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('trick/edit.html.twig', [
            'trick' => $trick,
            'form' => $form,
            'medias' => $medias
        ]);
    }

    /**
     * @Route("media/{id}", name="media_delete")
     */
    public function deleteMedias(Media $media, EntityManagerInterface $entityManager, MediaRepository $mediaRepository, Request $request): JsonResponse
    {

        $media = $mediaRepository->findOneBy($media);
        $entityManager->remove($media);
        $entityManager->flush();
        return new JsonResponse([
            'success' => 1,
            'message' => 'L\'image a bien été supprimée !'
        ], 200);
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
