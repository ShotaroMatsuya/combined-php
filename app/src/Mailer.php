<?php


namespace App;

use Exception;
/**
 * Mailer
 *
 * Send messages
 */
class Mailer
{

    /**
     * Send a message
     *
     * @param string $email The email address
     * @param string $message The message
     *
     * @return boolean True if sent, false otherwise
     */
    public function sendMessage($email, $message)
    {
        if (empty($email))
        {
            throw new Exception;
        }
        
        // Use mail() or PHPMailer for example
        sleep(10);

        echo "send '$message' to '$email'";

        return true;
    }
}