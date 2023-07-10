<?php
spl_autoload_register(function($className){
    include 'src/'.$className . '.php';
});

header('Content-Type:text/plain', true);

$billy = new Dog;
$santa = new Lion;
$loko = new Rabbit;

$billy->chase($loko);
$billy->kill($loko);

$santa->chase($billy);
$santa->kill($billy);

$loko->chaseBy($billy);
$loko->killedBy($billy);



