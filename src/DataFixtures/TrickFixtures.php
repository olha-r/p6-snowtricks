<?php

namespace App\DataFixtures;

use App\Entity\Trick;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;
use Symfony\Component\String\Slugger\AsciiSlugger;

class TrickFixtures extends Fixture
{


    public function load(ObjectManager $manager): void
    {
        $tricks = [
            1 => [
                'name' => 'Mute'
            ],
            2 => [
                'name' => 'sad ou melancholie ou style week'
            ],
            3 => [
                'name' => 'indy '
            ],
            4 => [
                'name' => 'stalefish'
            ],
            5 => [
                'name' => 'tail grab'
            ],
            6 => [
                'name' => 'nose grab'
            ],
            7 => [
                'name' => 'japan ou japan air'
            ],
            8 => [
                'name' => 'seat belt'
            ],
            9 => [
                'name' => 'truck driver'
            ],
            10 => [
                'name' => 'front flips'
            ],
            11 => [
                'name' => 'back flips'
            ],
            12 => [
                'name' => 'nose slide'
            ],
            13 => [
                'name' => 'tail slide'
            ],
            14 => [
                'name' => 'Japan air'
            ],
            15 => [
                'name' => 'rocket air'
            ],
            16 => [
                'name' => 'Backside Air'
            ],
            17 => [
                'name' => 'Method Air'
            ]
        ];
        $slugger = new AsciiSlugger();

        for ($j = 1; $j <= 30; $j++) {
            $user = $this->getReference('user_'. rand( 1, 5 ));
            $category = $this->getReference('category_'. rand( 1, 7 ));
            $trick = new Trick();
            $trick->setName("Trick $j")
                ->setDescription("<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab aperiam dolorum ducimus ea enim facilis illo, porro soluta tempore voluptatibus! Amet aperiam deleniti ipsum minus non possimus quo sint vero!
                                                   </br>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Commodi consectetur, delectus dignissimos ea enim inventore ipsum, praesentium repellendus temporibus ut veniam veritatis vero voluptatem! Ex labore maiores numquam provident sint.
                                                   </br>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Impedit, modi, repellat. Autem beatae corporis distinctio, earum harum incidunt itaque, minima mollitia nemo non nulla placeat praesentium quia sapiente sunt voluptatibus?
                                                   </p>")
                ->setCreatedAt(new \DateTime())
                ->setCategory($category)
                ->setUser($user)
                ->setSlug($slugger->slug($trick->getName()))
            ;
            $manager->persist($trick);
            $this->addReference('trick_' . $j, $trick);
        }


        $manager->flush();
    }


}
