<?php

namespace App\Service;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\File\UploadedFile;

class UploadService extends AbstractController
{

    public function upload($media)
    {
        // File name generation
        $file = md5(uniqid()) . '.' . $media->guessExtension();
        //Copying the file to the 'uploads' folder
        $media->move(
            $this->getParameter('media_directory'),
            $file
        );
        return $file;
    }

}





//File name generation
//$file = md5(uniqid()) . '.' . $m->guessExtension();
////Copying the file to the 'uploads' folder
//$m->move(
//    $this->getParameter('media_directory'),
//    $file