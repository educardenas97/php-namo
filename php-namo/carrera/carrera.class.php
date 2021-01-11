<?php
    class Carrera {

        public function setCarrera($detalle):string {
            require("../conexion.php");
            $response;
            $sql = "INSERT INTO carrera (car_codigo, car_detalle) VALUES (' ', '$detalle')";
            if ($conn->query($sql) === TRUE) {
                $response = "New record created successfully";
            } else {
                $response = "Error: " . $sql . "<br>" . $conn->error;
            }
            $conn->close();
            return $response;
        }


        public function getAllCarrera() {
            require("../conexion.php");
            $sql = "SELECT * FROM carrera";
            $result = $conn->query($sql);

            if ($result->num_rows > 0) {
                $postArray = array();
                $postArray["body"] = array();
                $postArray["numCount"] = $result->num_rows;
                while($row = $result->fetch_assoc()) array_push($postArray["body"], $row);
                $conn->close();
                return json_encode($postArray,JSON_INVALID_UTF8_SUBSTITUTE);
            } else {
                http_response_code(404);
                $conn->close();
                return json_encode( array("message" => "No record found.") );
            }
        }

    }

?>
