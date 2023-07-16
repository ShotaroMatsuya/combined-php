<?php

use PHPUnit\Framework\TestCase;
use App\Item;
use App\ItemChild;

class ItemTest extends TestCase
{
    public function testDescriptionIsNotEmpty()
    {
        $item = new Item;
        
        $this->assertNotEmpty($item->getDescription());                    
    }
    
    public function testIDisAnInteger()
    {
        $item = new ItemChild;
        
        $this->assertIsInt($item->getID());
    }    

}