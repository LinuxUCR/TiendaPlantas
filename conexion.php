<?php

class Conexion{

    public $con;

    public function __construct(){

        $opc = [
            PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
            PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_OBJ 
        ];

        $dsn = "mysql:host=localhost;dbname=PlantasCaribe;charset=utf8mb4";   
        
        try {
           
            $this->con = new PDO($dsn, "root", "", $opc);
            
        } catch (PDOException $e) {            
            echo "Error: " . $e->getMessage() . '<br>';
            die("Error conectando a la base de datos");
        }

    }

}

?>
