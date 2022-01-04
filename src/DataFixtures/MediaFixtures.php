<?php

namespace App\DataFixtures;

use App\Entity\Media;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;

class MediaFixtures extends Fixture
{

    public function load(ObjectManager $manager): void
    {
        for ($m = 1; $m <= 10; $m++) {

            $trick = $this->getReference('trick_'. rand( 1, 16 ));
            $media = new Media();
            $media->setName('image'.$m )
                ->setTrick($trick)
            ;
            $manager->persist($media);
            $this->addReference('media_' . $m, $media);
    }
        $manager->flush();
}
}
