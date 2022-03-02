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
        $users = [
            1 => [
                'name' => 'Mark'
            ],
            2 => [
                'name' => 'Lucia'
            ],
            3 => [
                'name' => 'Alex'
            ],
            4 => [
                'name' => 'Paul'
            ],
            5 => [
                'name' => 'Mario'
            ],
            6 => [
                'name' => 'Maria'
            ],
            7 => [
                'name' => 'Olivia'
            ],
            8 => [
                'name' => 'Alexia'
            ],
            9 => [
                'name' => 'Luca'
            ],
            10 => [
                'name' => 'Fred'
            ],
            11 => [
                'name' => 'Michel'
            ],
            12 => [
                'name' => 'Chris'
            ],
        ];

        foreach ($users as $key => $value) {
            $user = new User();
            $password = bin2hex(random_bytes(5));
            $hash = $this->hasher->hashPassword($user, $password);
            $email = strtolower($value['name']);
            $user->setUsername($value['name'])
                ->setPassword($hash)
                ->setEmail($email. '@' .$email . '-mail.com')
                ->setRoles(["ROLE_USER"])
                ->setFullName($value['name'])
                ->setUserPicture('user_' .$key)
            ;

            $manager->persist($user);
            $this->addReference('user_' . $key, $user);
        }


        $manager->flush();
    }
}
