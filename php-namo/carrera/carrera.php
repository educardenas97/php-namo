<?php
    header("Access-Control-Allow-Origin: *");
    header("Content-Type: application/json; charset=UTF-8");
    require("carrera.class.php");

    switch ($_SERVER['REQUEST_METHOD']) {
        case 'GET':
            try {
                $carrera = new Carrera();
                echo $carrera->getAllCarrera();
            } catch (\Throwable $th) {
                echo $th;
            }
            break;        
        case 'POST':
            try {
                $carrera = new Carrera();
                echo json_encode($carrera->setCarrera($_POST['detalle']));
            } catch (\Throwable $th) {
                echo $th;
            }
            break;
        default:
            echo "no valid method";
            break;
    }

?>