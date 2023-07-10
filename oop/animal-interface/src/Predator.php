<?php


interface Predator
{
    
    public function chase(Prey $prey);
    public function kill(Prey $prey);
}