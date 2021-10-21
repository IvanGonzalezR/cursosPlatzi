<?php

// Definimos los recursos disponibles
$allowedResourceTypes = [
    'books',
    'authors',
    'genres',
];

// Validamos que el recurso este disponible
$resourceType = $_GET['resource_type'];

if (!in_array($resourceType, $allowedResourceTypes)) {
    die;
}

//Defino los recursos

$books = [
    1 => [
        'titulo' => 'Lo que el viento se llevo',
        'id_autor' => 2,
        'id_genero' => 2,
    ],
    2 => [
        'titulo' => 'De animales a dioses',
        'id_autor' => 2,
        'id_genero' => 2,
    ],
    3 => [
        'titulo' => 'Java a fondo',
        'id_autor' => 3,
        'id_genero' => 3,
    ],
];

header('Content-Type: application/json');

//levantamos el ID del recurso buscado
$resourceId = array_key_exists('resource_id', $_GET) ? $_GET['resource_id'] : '';

// Generamos la respuesta asumiendo que el pedido es correcto
switch (strtoupper($_SERVER['REQUEST_METHOD'])) {
    case 'GET':
        if (empty($resourceId)) {
            echo json_encode($books);
        } else {
            if (array_key_exists($resourceId, $books)) {
                echo json_encode($books[$resourceId]);
            }
        }
        // echo json_encode($books);
        break;
    case 'POST':
        break;
    case 'PUT':
        break;
    case 'DELETE':
        break;
}
