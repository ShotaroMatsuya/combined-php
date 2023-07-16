<?php

use PHPUnit\Framework\TestCase;
use App\Mailer;
use App\SimpleOrder;

class MockTest extends TestCase
{

    // native phpunit mocking functionality
    public function testMock()
    {
        $mock = $this->createMock(Mailer::class);

        $mock->method('sendMessage')
            ->willReturn(true);

        $result = $mock->sendMessage('dave@example.com', 'Hello');

        $this->assertTrue($result);
    }

    // public function testOrderIsProcessed()
    // {
    //     $gateway = $this->getMockBuilder('PaymentGateway')
    //                     ->onlyMethods(['charge'])
    //                     ->getMock();

    //     $gateway->expects($this->once())
    //             ->method('charge')
    //             ->with($this->equalTo(200))
    //             ->willReturn(true);

    //     $order = new Order($gateway);

    //     $order->amount = 200;

    //     $this->assertTrue($order->process());

    // }

    // mockery functionality
    public function tearDown(): void
    {
        Mockery::close();
    }

    public function testOrderIsProcessedUsingMockery()
    {
        $gateway = Mockery::mock('PaymentGateway');

        $gateway->shouldReceive('charge')
                ->once()
                ->with(200)
                ->andReturn(true);

        $order = new SimpleOrder($gateway);
        $order->amount = 200;

        $this->assertTrue($order->process());
    }

    
}