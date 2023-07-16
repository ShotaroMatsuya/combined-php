<?php

use PHPUnit\Framework\TestCase;
use App\Mailer;
use App\Order;

class MockTest extends TestCase
{

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
}