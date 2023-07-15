<?php declare( strict_types=1 );


namespace App\Entity;


class BugReport extends Entity
{
    public function getId (): int
    {
        return (int) $this->id;
    }

    public function toArray (): array
    {
        return [
            'report_type' => $this->getReportType(),
            'email' => $this->getEmail(),
            'message' => $this->getMessage(),
            'link' => $this->getLink(),
            'created_at' => date('Y-m-d H:i:s'),
        ];
    }
}