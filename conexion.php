<?php

class Conexion{

    public $con;

    public function __construct(){

        $opc = [
            PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
            PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_OBJ 
        ];

        / Cambia estos valores para tu servidor remoto
        $host = "192.168.0.1"; // Ejemplo: 192.168.1.100 o example.com
        $dbname = "PlantasCaribe"; // Nombre de tu base de datos
        $username = "root"; // Usuario de tu base de datos en el servidor remoto
        $password = ""; // Contraseña del usuario
        $charset = "utf8mb4"; // Codificación

        $dsn = "mysql:host=$host;dbname=$dbname;charset=$charset";    
        
        try {
           
            $this->con = new PDO($dsn, "root", "", $opc);
            
        } catch (PDOException $e) {            
            echo "Error: " . $e->getMessage() . '<br>';
            die("Error conectando a la base de datos");
        }

    }

}

?>
