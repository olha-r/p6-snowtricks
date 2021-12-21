<?php

namespace App\DataFixtures;

use App\Entity\Comment;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Common\DataFixtures\DependentFixtureInterface;
use Doctrine\Persistence\ObjectManager;

class CommentFixtures extends Fixture implements DependentFixtureInterface
{

    public function load(ObjectManager $manager): void
    {
        for ($j = 1; $j <= mt_rand(5, 20); $j++) {
            $trick = $this->getReference('trick_'. rand( 1, 10 ));
            $comment = new Comment();
            $comment->setContent("<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.
                                                      </p>")
                ->setCreatedAt(new \DateTime())
                ->setTrick($trick);
            $manager->persist($comment);
            $this->addReference('comment_' . $j, $comment);
        }
        $manager->flush();
    }

    public function getDependencies(): array
    {
        return [
            CategoryFixtures::class,
            UserFixtures::class,
            TrickFixtures::class
        ];
    }
}
