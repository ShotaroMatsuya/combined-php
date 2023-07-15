<?php

declare(strict_types = 1);

namespace App\Database;

use PDO;
use PDOStatement;

class PDOQueryBuilder extends QueryBuilder
{

    public function get()
    {
        return $this->statement->fetchAll();
    }

    public function count()
    {
        return $this->statement->rowCount();
    }

    public function lastInsertedId()
    {
        return $this->connection->lastInsertId();
    }

    public function prepare(string $query): PDOStatement
    {
        return $this->connection->prepare($query);
    }

    /** @param PDOStatement $statement */
    public function execute($statement): PDOStatement
    {
        $statement->execute($this->bindings);
        $this->bindings = [];
        $this->placeholders = [];
        return $statement;
    }

    public function fetchInto($className)
    {
        return $this->statement->fetchAll(PDO::FETCH_CLASS, $className);
    }

    public function beginTransaction()
    {
        $this->connection->beginTransaction();
    }

    public function affected()
    {
        return $this->count();
    }
}