<?php


abstract class Database
{
    protected $_handler; // MySQLi, PDOインスタンスがはいる
    protected $statement; // statementオブジェクト
    protected $host, $db_name, $db_user, $db_password;
    
    public function __construct($host, $db_name, $db_user, $db_password)
    {
        $this->host = $host;
        $this->db_name = $db_name;
        $this->db_password = $db_password;
        $this->db_user = $db_user;
    }
    
    abstract public function connect(); // PDO/MySQLiオブジェクトの作成
    
    public function select($sql) //クエリを受け取りstatementオブジェクトを返す
    {
        $this->statement = $this->_handler->query($sql);
        return $this; // method chaining
    }
    
    public function getConnection()
    {
        return $this->_handler;
    }
    
    abstract public function get(); // statementクラスから実際の値を連想配列で取得
}