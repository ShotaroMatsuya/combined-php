<?php

use App\Mailer2;
use App\User;
use App\User2;
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
    public function testNotifyReturnsTruePassingDepsAsCallable()
    {
        $user = new User2('dave@example.com');

        $user->setMailerCallable(function() {

            echo "mocked";

            return true;

        });
    
        $this->assertTrue($user->notify('Hello!'));
    }
}