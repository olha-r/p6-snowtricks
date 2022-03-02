<?php

namespace App\DataFixtures;

use App\Entity\Video;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;

class VideoFixtures extends Fixture
{

    public function load(ObjectManager $manager): void
    {
        $videos = [ 'https://www.youtube.com/embed/SSi7FyUnXVA', 'https://www.youtube.com/embed/V9xuy-rVj9w',
            'https://www.youtube.com/embed/dSZ7_TXcEdM', 'https://www.youtube.com/embed/nt97YgBtl1g',
            'https://www.youtube.com/embed/1AibZIwxnuU', 'https://www.youtube.com/embed/YAABnJfKJ5w'
//            1 => [
//                'url' => 'https://www.youtube.com/embed/SSi7FyUnXVA'
//            ],
//            2 => [
//                'url' => 'https://www.youtube.com/embed/V9xuy-rVj9w'
//            ],
//            3 => [
//                'url' => 'https://www.youtube.com/embed/dSZ7_TXcEdM'
//            ],
//            4 => [
//                'url' => 'https://www.youtube.com/embed/nt97YgBtl1g'
//            ],
//            5 => [
//                'url' => 'https://www.youtube.com/embed/1AibZIwxnuU'
//            ],
//            6 => [
//                'url' => 'https://www.youtube.com/embed/YAABnJfKJ5w'
//            ],
        ];
        for ($v = 1; $v <= 30; $v++) {
            $trick = $this->getReference('trick_' . rand(1, 17));
            $url = array_rand($videos);
            $video = new Video();
            $video->setTrick($trick)
                ->setVideoUrl($videos[$url])
            ;
            $manager->persist($video);
            $this->addReference('video_' . $v, $video);
        }
        $manager->flush();
    }
}
