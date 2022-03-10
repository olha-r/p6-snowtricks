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

        foreach ($tricks as $key => $value) {
            $user = $this->getReference('user_'. rand( 1, 5 ));
            $category = $this->getReference('category_'. rand( 1, 7 ));
            $trick = new Trick();
            $trick->setName($value['name'])
                ->setDescription("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dapibus magna sed mauris blandit varius. Fusce enim ex, dignissim et eros a, maximus eleifend sapien. Aliquam imperdiet sem a auctor finibus. Fusce id molestie risus, eu facilisis felis. Mauris at massa a justo mattis ultrices. Vivamus varius nec elit at efficitur. In hac habitasse platea dictumst. Etiam semper consectetur tellus, convallis feugiat elit placerat at. Curabitur nec auctor nisl, et congue ligula. Aenean molestie, lacus nec ultricies ornare, neque neque vulputate justo, euismod pulvinar elit elit vitae turpis. Pellentesque porta ipsum in sapien malesuada, eget tincidunt velit convallis. Vivamus at purus in eros faucibus vulputate eu quis est.

Etiam tempor fringilla fringilla. Donec in risus nec risus gravida consectetur sit amet bibendum massa. Nulla neque augue, aliquet non elit nec, faucibus elementum ex. Phasellus id mi id dui rutrum laoreet vitae eu ipsum. Vivamus in condimentum lectus. Maecenas ultrices nibh sed accumsan dictum. Nam pellentesque elementum feugiat. Praesent et sagittis lorem, et aliquam leo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;

Suspendisse et bibendum augue. Maecenas mauris purus, placerat in gravida nec, ornare id tellus. Donec vestibulum vel sapien ut porttitor. Nunc sit amet lacus ut leo consequat hendrerit. Quisque ullamcorper sapien tortor, ut dapibus nulla vehicula quis. Praesent sed sollicitudin ligula. Praesent lacinia dolor dapibus, semper tortor in, dapibus quam. Vivamus tempus eu turpis quis fringilla. Integer semper efficitur eleifend. Nullam eleifend at ex sit amet efficitur. Ut hendrerit et massa sed mattis. Nam id tempor orci. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus in metus urna. Nulla a lectus a enim maximus sagittis. Suspendisse tempor justo nec tortor ultricies, eu rhoncus dolor elementum.

Morbi leo sapien, mollis vel ultrices sed, condimentum quis diam. Mauris quis ullamcorper risus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus aliquet odio in augue aliquet, et rhoncus mauris lacinia. Fusce rhoncus accumsan ante sed malesuada. In ultricies cursus sem, nec ornare dolor vestibulum rutrum. Suspendisse potenti. Nullam gravida, libero at semper tincidunt, eros enim maximus magna, eleifend posuere lectus nibh ut arcu. Vivamus tempor cursus ex vitae finibus. Cras accumsan magna a porttitor tempus. Fusce eleifend tempor lectus quis ullamcorper. Phasellus eget consectetur dolor, at luctus augue. Nullam nibh neque, cursus at gravida eget, accumsan eu risus. Integer gravida sodales mauris ut fermentum.")
                ->setCreatedAt(new \DateTime())
                ->setCategory($category)
                ->setUser($user)
                ->setSlug($slugger->slug($trick->getName()))
            ;
            $manager->persist($trick);
            $this->addReference('trick_' . $key, $trick);
        }
        $manager->flush();
    }


}
