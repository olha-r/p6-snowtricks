<?php

namespace App\Controller;

use App\Repository\CommentRepository;
use App\Service\PaginationService;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;

/**
 * @Route("/comment")
 */
class CommentController extends AbstractController
{
    /**
     * @Route("/{trickId<\d+>}/page/{page<\d+>}", name="comment_page", methods={"GET"})
     * @Route("/{trickId<\d+>}/page/{page<\d+>}/{limit}-per-page", name="comment_page_with_limit", methods={"GET"})
     */
    public function renderPaginatedComments(CommentRepository $commentRepository, PaginationService $paginationService, int $trickId, int $page = 1, int $limit = 10)
    {
        $queryBuilder = $commentRepository->createQueryBuilder('item')
            ->where("item.trick = $trickId")
            ->orderBy('item.createdAt', 'DESC');

        $options = $paginationService->getRenderOptions('comments', $queryBuilder, $limit, $page);

        $options['trickId'] = $trickId;

        return $this->render('comment/list.html.twig', $options);
    }
}