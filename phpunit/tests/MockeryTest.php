<?php

use App\User3;
use PHPUnit\Framework\TestCase;

class MockeryTest extends TestCase
{
    public function tearDown(): void
    {
        Mockery::close();
    }
    
    /**
     * @runInSeparateProcess
     * @preserveGlobalState disabled
     */
    public function testNotifyReturnsTrue()
    {
        $user = new User3('dave@example.com');
        
        $mock = Mockery::mock('alias:App\Mailer');
        
        $mock->shouldReceive('send')
            ->once()
            ->with($user->email, 'Hello!')
            ->andReturn(true);
            
        $this->assertTrue($user->notify('Hello!'));       
    }   
    /**
     * @runInSeparateProcess
     * @preserveGlobalState disabled
     */ 
    public function testSendMessageReturnsTrue()
    {
        $mock = Mockery::mock('alias:App\Mailer');
        $mock->shouldReceive('send')
            ->once()
            ->with('XXXXXXXXXXXXXXXX', 'Hello!')
            ->andReturn(true);
        
            $this->assertTrue($mock->send('XXXXXXXXXXXXXXXX', 'Hello!'));
    }
}