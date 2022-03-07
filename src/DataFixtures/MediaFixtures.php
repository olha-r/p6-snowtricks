<?php

namespace App\DataFixtures;

use App\Entity\Media;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;

class MediaFixtures extends Fixture
{

    public function load(ObjectManager $manager): void
    {
        for ($m = 1; $m <= 100; $m++) {
            $trick = $this->getReference('trick_' . rand(1, 17));
            $media = new Media();
            $media->setName('snowboarding' . rand(1,14) . '.jpeg')
                ->setTrick($trick);
            $manager->persist($media);
            $this->addReference('media_' . $m, $media);
        }
        $manager->flush();
    }
}
