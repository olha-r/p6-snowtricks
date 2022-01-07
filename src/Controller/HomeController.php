<?php

namespace App\Controller;

use App\Repository\TrickRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class HomeController extends AbstractController
{
    /**
     * @Route("/", name="home")
     */

    public function index(TrickRepository $repo, Request $request): Response
    {
        $limit = 6;

        $page = (int)$request->query->get("page", 1);

        $tricks = $repo->getPaginatedTricks($page, $limit);

        $total = $repo->getTotalTricks();

        return $this->render('home/homepage.html.twig', [
            'tricks' => $tricks,
            'total' => $total,
            'limit' => $limit,
            'page' => $page
        ]);
    }
}
