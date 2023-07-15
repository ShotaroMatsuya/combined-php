<?php 

namespace App\Database;
abstract class QueryBuilder implements DMLDefinitionInterface
{
    use Query;
    protected $connection; // PDO or mysqli
    protected string $table;
    protected $statement; // PDOStatement or mysqli_stmt
    protected string | array $fields;
    protected array $placeholders;
    protected array $bindings; // name = ? ['terry']
    protected $operation = self::DML_TYPE_SELECT; //dml SELECT, UPDATE, INSERT, DELETE

    const OPERATORS = ['=', '>=', '>', '<=', '<', '<>'];
    const PLACEHOLDER = '?';
    const COLUMNS = '*';
    
    public function __construct(DatabaseConnectionInterface $databaseConnection)
    {
        $this->connection = $databaseConnection->getConnection();
    }


    abstract public function get();
    abstract public function count();
    abstract public function lastInsertedId();
    abstract public function prepare(string $query);
    abstract public function execute($statement);
    abstract public function fetchInto($className);
    abstract public function beginTransaction();
    abstract public function affected();
}

?>