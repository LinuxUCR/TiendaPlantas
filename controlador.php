<?php

// Habilitar la visualización de errores (solo en desarrollo)
ini_set('display_errors', 1);
error_reporting(E_ALL);

// Requerir la clase Crud
require 'Crud.php';

$crud = new Crud();

$action = $_GET['action'] ?? null;

try {
    switch ($action) {
        case 'getAll':
            $table = $_GET['table'] ?? null;
            if (!$table) {
                throw new Exception('La tabla no fue especificada.');
            }
            $response = $crud->getAll($table);
            break;

        case 'getById':
            $table = $_GET['table'] ?? null;
            $id = $_GET['id'] ?? null;
            if (!$table || !$id) {
                throw new Exception('Faltan parámetros (tabla o id).');
            }
            $response = $crud->getById($table, $id);
            break;

        case 'create':
            $table = $_POST['table'] ?? null;
            $data = $_POST['data'] ?? [];
            if (!$table || empty($data)) {
                throw new Exception('Faltan parámetros (tabla o datos).');
            }
            $response = $crud->create($table, $data);
            break;

        case 'update':
            $table = $_POST['table'] ?? null;
            $id = $_POST['id'] ?? null;
            $data = $_POST['data'] ?? [];
            if (!$table || !$id || empty($data)) {
                throw new Exception('Faltan parámetros (tabla, id o datos).');
            }
            $response = $crud->update($table, $data, $id);
            break;

        case 'delete':
            $table = $_POST['table'] ?? null;
            $id = $_POST['id'] ?? null;
            if (!$table || !$id) {
                throw new Exception('Faltan parámetros (tabla o id).');
            }
            $response = $crud->delete($table, $id);
            break;

        case 'callProcedure':
            
            $contentType = isset($_SERVER["CONTENT_TYPE"]) ? trim($_SERVER["CONTENT_TYPE"]) : '';
            
            if (strpos($contentType, 'application/json') !== false) {               
                $content = trim(file_get_contents("php://input"));                
                $decoded = json_decode($content, true);
               
                if(!is_array($decoded)){
                    throw new Exception('El contenido JSON no es válido.');
                }

                $procedureName = $decoded['procedureName'] ?? null;
                $params = $decoded['params'] ?? [];
            } 

            if (!$procedureName) {
                throw new Exception('El nombre del procedimiento no fue especificado.');
            }

            $response = $crud->callProcedure($procedureName, $params);
           
            break;


        default:
            throw new Exception('Acción no válida.');
    }

    // Respuesta exitosa
    header('Content-Type: application/json');
    echo json_encode($response);

} catch (Exception $e) {

    // Respuesta de error
    header('Content-Type: application/json', true, 400);
    echo json_encode(['error' => $e->getMessage()]);

}

?>