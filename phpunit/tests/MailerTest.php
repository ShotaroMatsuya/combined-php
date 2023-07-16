<?php

use PHPUnit\Framework\TestCase;
use App\Mailer;

class MailerTest extends TestCase
{
    public function testSendMessageReturnsTrue()
    {
        $this->assertTrue(Mailer::send('dave@example.com', 'Hello!'));
    }
    
    public function testInvalidArgumentExceptionIfEmailIsEmpty()
    {
        $this->expectException(InvalidArgumentException::class);
            
        Mailer::send('', '');
    }      
}