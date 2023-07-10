<?php


abstract class PreyMethod
{
    
    public function chaseBy(Predator $predator)
    {
        var_dump('Please help! I\'m being chased by a '.get_class($predator));
    }
    
    public function killedBy(Predator $predator)
    {
        var_dump(get_class().' has been killed by a '. get_class($predator));
    }
}