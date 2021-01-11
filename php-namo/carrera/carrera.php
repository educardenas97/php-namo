<?php
    header("Access-Control-Allow-Origin: *");
    header("Content-Type: application/json; charset=UTF-8");
    require("carrera.class.php");

    if($_SERVER['REQUEST_METHOD'] == 'GET'){
        $carrera = new Carrera();
        echo $carrera->getAllCarrera();
    }elseif($_SERVER['REQUEST_METHOD'] == 'POST'){
        echo json_encode(Array('messaje' => 'POST METHOD'));
    }elseif($_SERVER['REQUEST_METHOD'] == 'PUT'){
        echo json_encode(Array('messaje' => 'PUT METHOD'));
    }elseif($_SERVER['REQUEST_METHOD'] == 'DELETE'){
        echo json_encode(Array('messaje' => 'DELETE METHOD'));
    }else{
        echo json_encode(Array('messaje' => 'NO VALID METHOD'));
    }
?>