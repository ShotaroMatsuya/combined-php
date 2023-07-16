<?php

use App\Mailer2;
use App\User;
use PHPUnit\Framework\TestCase;


class UserTest extends TestCase
{
    public function testNotifyReturnsTrueUsingRefactor()
    {
        $user = new User('dave@example.com');

        $mailer = $this->createMock(Mailer2::class);
        
        $mailer->expects($this->once())
                ->method('send')
                ->willReturn(true);
        
        $user->setMailer($mailer);
        
        $this->assertTrue($user->notify('Hello!'));
    } 

}