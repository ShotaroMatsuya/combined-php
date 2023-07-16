<?php

use PHPUnit\Framework\TestCase;
use App\Product;

class ProductTest extends TestCase
{
    public function testIdIsAnInteger()
    {
        $product = new Product;
        
        $reflector = new ReflectionClass(Product::class);
        
		$property = $reflector->getProperty('product_id');        
		
        $property->setAccessible(true);
        $value = $property->getValue($product);        
                
        $this->assertIsInt($value);
    }
}