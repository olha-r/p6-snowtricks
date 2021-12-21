<?php

namespace App\DataFixtures;

use App\Entity\Category;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;

class CategoryFixtures extends Fixture
{

    public function load(ObjectManager $manager): void
    {$categories = [
        1 => [
            'name' => 'Grabs'
        ],
        2 => [
            'name' => 'Rotations'
        ],
        3 => [
            'name' => 'Flips'
        ],
    ];

        foreach ($categories as $key => $value) {
            $category = new Category();
            $category->setName($value['name']);
            $manager->persist($category);

            $this->addReference('category_' . $key, $category);
        }
        $manager->flush();
}
}
