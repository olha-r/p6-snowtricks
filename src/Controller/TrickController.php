<?php

namespace App\Controller;

use App\Entity\Comment;
use App\Entity\Media;
use App\Entity\Trick;
use App\Entity\Video;
use App\Form\CommentType;
use App\Form\MediaType;
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
use Symfony\Component\Form\Form;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Session\SessionInterface;
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
    public function renderPaginatedTricks(TrickRepository $trickRepository, PaginationService $pagination, $page = 1): Response
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
    public function new(Request $request, EntityManagerInterface $entityManager, Security $security, UploadService $upload, SessionInterface $session): Response
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

//            Get media files from the form
            $medias = $form->get('medias')->getData();
            foreach ($medias as $media) {
                $fileName = $upload->upload($media);
                //we store media file in the database
                $media = new Media();
                $media->setName($fileName);
                $media->setTrick($trick);
                $entityManager->persist($media);
                $entityManager->flush();
            }


//            // Get videos Url from the form
            if ($session->get('video')){
                $videoUrl = $session->get('video');
                foreach ($videoUrl as $url) {
                    $video = new Video();
                    $video->setVideoUrl($url);
                    $video->setTrick($trick);
                    $entityManager->persist($video);
                    $entityManager->flush();
                }

            }
            $session->remove('video');

            $this->addFlash(
                'success',
                'Le trick a bien été ajouté'
            );
            return $this->redirectToRoute('trick_show', ['slug' => $trick->getSlug()], Response::HTTP_SEE_OTHER);

        }
        $session->remove('video');
        return $this->renderForm('trick/new.html.twig', [
            'trick' => $trick,
            'form' => $form
        ]);
    }


    /**
     * @Route("/add_media_preview", name="trick_add_media_preview", methods={"POST"})
     */
    public function addMediaPreview(EntityManagerInterface $entityManager, SessionInterface $session, Request $request, UploadService $upload): Response
    {
        $medias = $request->files->get('medias');
        foreach ($medias as $media) {
            $fileName = md5(uniqid()) . '.' . $media->guessExtension();
            $media->move(
                $this->getParameter('upload_directory'),
                $fileName
            );
            $media = new Media();
            $media->setName($fileName);
            $entityManager->persist($media);
            $entityManager->flush();


            if ($session->get('media')) {
                $mediaSession = $session->get('media');
                array_push($mediaSession, $media->getName());
                $session->set('media', $mediaSession);
            } else {
                $session->set('media', [$media->getName()]);
            }
        }

        return new JsonResponse([
            'code' => 200,
            'message' => 'ça marche bien avec medias'
        ], 200);

    }

    /**
     * @Route("/remove_media_preview", name="trick_remove_media_preview", methods={"POST"})
     */
    public function removeMediaPreview(SessionInterface $session, Request $request): Response
    {
        if ($session->get('media')) {
            $arrayMedia = $session->get('media');
            $mediaToRemove = $request->request->get('link');

            if(in_array($mediaToRemove, $arrayMedia))  {
                $key = array_search($mediaToRemove, $arrayMedia);
                array_splice($arrayMedia, $key, 1);
                $session->set('media', $arrayMedia);
                return new JsonResponse([
                    'code' => 200,
                    'message' =>  "Media preview is deleted",
                ], 200);
            }

        } else {
            return new JsonResponse([
                'code' => 200,
                'message' => 'Bien'
            ], 200);
        }

    }


    /**
     * @Route("/add_video", name="trick_add_video", methods={"POST"})
     */
    public function addVideo(SessionInterface $session, Request $request): Response
    {
        if ($session->get('video')) {
            $video = $session->get('video');
            array_push($video, $request->request->get('videos'));
            $session->set('video', $video);
        } else {
            $session->set('video', [$request->request->get('videos')]);
        }

        return new JsonResponse([
            'code' => 200,
            'message' => 'ça marche bien'
        ], 200);

    }

    /**
     * @Route("/remove_video_preview", name="trick_remove_video", methods={"POST"})
     */
    public function removeVideoPreview(SessionInterface $session, Request $request): Response
    {
        if ($session->get('video')) {
            $arrayVideo = $session->get('video');
            $videoToRemove = $request->request->get('link');

            if(in_array($videoToRemove, $arrayVideo))  {
                $key = array_search($videoToRemove, $arrayVideo);
                array_splice($arrayVideo, $key, 1);
                $session->set('video', $arrayVideo);
//                return $this->json($session->get('video'));
                return new JsonResponse([
                    'code' => 200,
                    'message' =>  "Video preview is deleted",
//                        $this->json($session->get('video')),
                ], 200);
            }

        } else {
            return new JsonResponse([
                'code' => 200,
                'message' => 'bien'
            ], 200);
        }

    }



    /**
     * @Route("/{slug}/delete", name="trick_delete", methods={"POST"})
     */
    public function delete(Request $request, Trick $trick, EntityManagerInterface $entityManager, MediaRepository $media, UploadService $upload): Response
    {
        if ($this->isCsrfTokenValid('delete' . $trick->getSlug(), $request->request->get('_token'))) {
            //delete all images of trick on server
            $medias = $media->findBy(array('trick' => $trick->getId()));
            foreach ($medias as $media) {
                $upload->remove($media->getName());
            }
            //delete trick
            $entityManager->remove($trick);
            $entityManager->flush();
        }
        $this->addFlash(
            'success',
            'Le trick a bien été supprimé!'
        );

        return $this->redirectToRoute('home', [], Response::HTTP_SEE_OTHER);
    }

    /**
     * @Route("/details/{slug}", name="trick_show", methods={"GET", "POST"})
     */
    public function show($slug, Trick $trick, MediaRepository $media, VideoRepository $video, CommentRepository $commentRepository, EntityManagerInterface $entityManager, Request $request, Security $security): Response
    {
        $user = $security->getUser();
        $medias = $media->findBy(['trick' => $trick]);
        $videos = $video->findBy(['trick' => $trick]);
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
            $this->addFlash(
                'success',
                'Le commentaire a bien été ajouté!'
            );

            return $this->redirectToRoute('trick_show', ['slug' => $trick->getSlug()]);
        }

        return $this->renderForm('trick/show.html.twig', [
            'trick' => $trick,
            'comments' => $comment,
            'commentForm' => $form,
            'medias' => $medias,
            'videos' => $videos
        ]);
    }

    /**
     * @Route("/{slug}/edit", name="trick_edit", methods={"GET", "POST"})
     */
    public function edit(Request $request, Trick $trick, MediaRepository $media, VideoRepository $video, EntityManagerInterface $entityManager, UploadService $upload, SessionInterface $session): Response
    {
        $form = $this->createForm(TrickType::class, $trick);
        $form->handleRequest($request);
        $medias = $media->findBy(['trick' => $trick]);
        $videos = $video->findBy(['trick' => $trick]);
        if ($form->isSubmitted() && $form->isValid()) {
            $trick->setUpdatedAt(new \DateTime());

            $entityManager->persist($trick);
            $entityManager->flush();
            $medias = $form->get('medias')->getData();

            //Add new media files
            foreach ($medias as $media) {
                $fileName = $upload->upload($media);
                //we store media file in the database
                $media = new Media();
                $media->setName($fileName);
                $media->setTrick($trick);
                $entityManager->persist($media);
                $entityManager->flush();
            }

            if ($session->get('video')){
                $videoUrl = $session->get('video');
                foreach ($videoUrl as $url) {
                    $video = new Video();
                    $video->setVideoUrl($url);
                    $video->setTrick($trick);
                    $entityManager->persist($video);
                    $entityManager->flush();
                }
                $session->remove('video');
            }
            // Add new videos Url
//            $videoUrl = $form->get('videos')->getData();
////                foreach ($videos as $videoUrl) {
//            $video = new Video();
//            $video->setVideoUrl($videoUrl);
//            $video->setTrick($trick);
//            $entityManager->persist($video);
//            $entityManager->flush();
////                }

            $this->addFlash(
                'success',
                'Le trick a bien été modifié!'
            );
            return $this->redirectToRoute('trick_show', ['slug' => $trick->getSlug()], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('trick/edit.html.twig', [
            'trick' => $trick,
            'form' => $form,
            'medias' => $medias,
            'videos' => $videos
        ]);
    }

    /**
     * @Route("/media/{id}", name="media_delete")
     */
    public function deleteMedias($id, Media $media, EntityManagerInterface $entityManager, MediaRepository $mediaRepository, Request $request, UploadService $upload): JsonResponse
    {
        $media = $mediaRepository->findOneBy(['id'=>$id]);
        $upload->remove($media->getName());
//
//        $filesystem = new Filesystem();
//        $directory = $this->getParameter('upload_directory');
//        $mediaName = $media->getName();
//        $filesystem->remove($directory.'/'.$mediaName);

        $entityManager->remove($media);
        $entityManager->flush();
        return new JsonResponse([
            'success' => 1,
            'message' => 'L\'image a bien été supprimée !'
        ], 200);
    }

    /**
     * @Route("/video/{id}", name="video_delete")
     */
    public function deleteVideo($id, EntityManagerInterface $entityManager, VideoRepository $videoRepository): JsonResponse
    {
        $video = $videoRepository->findOneBy(['id'=>$id]);
        $entityManager->remove($video);
        $entityManager->flush();
        return new JsonResponse([
            'success' => 1,
            'message' => 'Video a bien été supprimée !'
        ], 200);
    }

}
