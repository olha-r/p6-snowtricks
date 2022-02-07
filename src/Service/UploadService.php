<?php

namespace App\Service;

use Symfony\Component\HttpFoundation\File\Exception\FileException;
use Symfony\Component\HttpFoundation\File\UploadedFile;
use Symfony\Component\String\Slugger\SluggerInterface;

class UploadService
{
    private $targetDirectory;
    private $slugger;

    public function __construct($targetDirectory, SluggerInterface $slugger)
    {
        $this->targetDirectory = $targetDirectory;
        $this->slugger = $slugger;
    }
    public function upload(UploadedFile $file): string
    {
        // File name generation

        //        $file = md5(uniqid()) . '.' . $media->guessExtension();
        $originalFilename = pathinfo($file->getClientOriginalName(), PATHINFO_FILENAME);
        $safeFilename = $this->slugger->slug($originalFilename);
        $fileName = $safeFilename.'-'.uniqid().'.'.$file->guessExtension();

        //Copying the file to the 'uploads' folder

//        $media->move(
//            $this->getParameter('media_directory'),
//            $file
//        );
//        return $file;
        try {
            $file->move($this->getTargetDirectory(), $fileName);
        } catch (FileException $e) {
            // ... handle exception if something happens during file upload
        }

        return $fileName;

    }

    public function getTargetDirectory()
    {
        return $this->targetDirectory;
    }

}





//File name generation
//$file = md5(uniqid()) . '.' . $m->guessExtension();
////Copying the file to the 'uploads' folder
//$m->move(
//    $this->getParameter('media_directory'),
//    $file