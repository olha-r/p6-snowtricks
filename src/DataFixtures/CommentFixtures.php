<?php

namespace App\DataFixtures;

use App\Entity\Comment;
use App\Repository\MediaRepository;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Common\DataFixtures\DependentFixtureInterface;
use Doctrine\Persistence\ObjectManager;

class CommentFixtures extends Fixture implements DependentFixtureInterface
{

    public function load(ObjectManager $manager): void
    {
        for ($j = 1; $j <=  100; $j++) {
            $user = $this->getReference('user_'. rand( 1, 12 ));
            $trick = $this->getReference('trick_'. rand( 1, 17 ));
            $comment = new Comment();
            $comment->setContent("<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci amet aperiam beatae dicta ducimus ea facilis id ipsum modi, nobis nulla provident quia sint sit suscipit tenetur velit. Cumque, molestias.
                                                      </p>")
                ->setCreatedAt(new \DateTime())
                ->setTrick($trick)
                ->setUser($user)
            ;
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
            TrickFixtures::class,
            VideoFixtures::class,
            MediaFixtures::class
        ];
    }
}
