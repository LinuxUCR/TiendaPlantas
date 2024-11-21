<?php
require 'conexion.php';
 
class Crud{
    private $conexion;

    public function __construct() {
        $db = new Conexion();
        $this->conexion = $db->con;
    }

    // Método para obtener todos los registros
    public function getAll($table) {
        $stmt = $this->conexion->prepare("SELECT * FROM $table");
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    // Método para obtener un registro por ID
    public function getById($table, $id) {
        $stmt = $this->conexion->prepare("SELECT * FROM $table WHERE id = :id");
        $stmt->bindParam(':id', $id, PDO::PARAM_INT);
        $stmt->execute();
        return $stmt->fetch(PDO::FETCH_ASSOC);
    }

    // Método para insertar un registro
    public function create($table, $data) {
        $keys = implode(', ', array_keys($data));
        $placeholders = ':' . implode(', :', array_keys($data));

        $stmt = $this->conexion->prepare("INSERT INTO $table ($keys) VALUES ($placeholders)");
        foreach ($data as $key => $value) {
            $stmt->bindValue(":$key", $value);
        }
        return $stmt->execute();
    }

    // Método para actualizar un registro
    public function update($table, $data, $id) {
        $fields = '';
        foreach ($data as $key => $value) {
            $fields .= "$key = :$key, ";
        }
        $fields = rtrim($fields, ', ');

        $stmt = $this->conexion->prepare("UPDATE $table SET $fields WHERE id = :id");
        foreach ($data as $key => $value) {
            $stmt->bindValue(":$key", $value);
        }
        $stmt->bindValue(':id', $id, PDO::PARAM_INT);

        return $stmt->execute();
    }

    // Método para eliminar un registro
    public function delete($table, $id) {
        $stmt = $this->conexion->prepare("DELETE FROM $table WHERE id = :id");
        $stmt->bindParam(':id', $id, PDO::PARAM_INT);
        return $stmt->execute();
    }

    // Método genérico para llamar a procedimientos almacenados
    public function callProcedure($procedureName, $params = []) {
        // Crear la lista de placeholders para los parámetros
        $placeholders = implode(', ', array_map(fn($key) => ":$key", array_keys($params)));

        // Preparar la llamada al procedimiento
        $stmt = $this->conexion->prepare("CALL $procedureName($placeholders)");

        // Vincular los parámetros
        foreach ($params as $key => $value) {
            $stmt->bindValue(":$key", $value);
        }

        // Ejecutar el procedimiento y obtener los resultados
        $stmt->execute();
        
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
}
