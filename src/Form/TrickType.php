<?php

namespace App\Form;

use App\Entity\Category;
use App\Entity\Trick;
use App\Entity\User;
use App\Entity\Video;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\CollectionType;
use Symfony\Component\Form\Extension\Core\Type\FileType;
use Symfony\Component\Form\Extension\Core\Type\UrlType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class TrickType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('name')
            ->add('description')
            ->add('category', EntityType::class,
                [
                    'class' => Category::class,
                    'choice_label' => 'name'
                ])
            ->add('medias', FileType::class, [
                'multiple' => true,
                'mapped' => false,
                'required' => false
            ])
            ->add('videos', CollectionType::class, [
                // each entry in the array will be an "url" field
                'entry_type' => UrlType::class,
                // these options are passed to each "url" type
                'entry_options' => [
                    'class' => Video::class,
                    'multiple' => true,
                ],
            ]);
    }
//$builder->add('emails', CollectionType::class, [
//    // each entry in the array will be an "email" field
//'entry_type' => EmailType::class,
//    // these options are passed to each "email" type
//'entry_options' => [
//'attr' => ['class' => 'email-box'],
//],
//]);
    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Trick::class,
        ]);
    }
}
