<?php

namespace App\DataFixtures;

use App\Entity\User;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;
use Symfony\Component\PasswordHasher\Hasher\UserPasswordHasherInterface;


class UserFixtures extends Fixture
{
    protected $hasher;

    public function __construct(UserPasswordHasherInterface $hasher)
    {
        $this->hasher= $hasher;
    }

    public function load(ObjectManager $manager): void
    {

        for ($u = 1; $u < 6; $u++) {
            $user = new User();
            $hash = $this->hasher->hashPassword($user, "testtest");
            $user->setUsername("User $u")
                ->setPassword($hash)
                ->setEmail("username$u@gmail.com")
                ->setToken('token');

            $manager->persist($user);
            $this->addReference('user_' . $u, $user);
        }


        $manager->flush();
    }
}
