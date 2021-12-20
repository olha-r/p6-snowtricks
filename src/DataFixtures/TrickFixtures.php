<?php

namespace App\DataFixtures;

use App\Entity\Trick;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;

class TrickFixtures extends Fixture
{


    public function load(ObjectManager $manager): void
    {
        for ($j = 1; $j <= 30; $j++) {
            $category = $this->getReference('category_'. rand( 1, 3 ));
            $trick = new Trick();
            $trick->setName("Lorem ipsum dolor $j")
                ->setDescription("<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab aperiam dolorum ducimus ea enim facilis illo, porro soluta tempore voluptatibus! Amet aperiam deleniti ipsum minus non possimus quo sint vero!
                                                   </br>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Commodi consectetur, delectus dignissimos ea enim inventore ipsum, praesentium repellendus temporibus ut veniam veritatis vero voluptatem! Ex labore maiores numquam provident sint.
                                                   </br>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Impedit, modi, repellat. Autem beatae corporis distinctio, earum harum incidunt itaque, minima mollitia nemo non nulla placeat praesentium quia sapiente sunt voluptatibus?
                                                   </p>")
                ->setCreatedAt(new \DateTime())
                ->setUpdatedAt(new \DateTime())
                ->setCategory($category);
            $manager->persist($trick);
            $this->addReference('trick_' . $j, $trick);
        }


        $manager->flush();
    }


}
