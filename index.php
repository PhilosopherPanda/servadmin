<?php

echo "test database";
echo "<br>";
echo "estartsa";

$tescon = mysqli_connect("172.17.0.2","root","testing","Trucorpdb");
if (!$tescon){
        die ("failed".mysqli_connect_error());
}

$query = "SELECT * FROM users";
$res = $tescon->query($query);

if ($res->num_rows > 0){
        while($row = $res->fetch_assoc()){
                echo "ID: ".$row["ID"]."  Nama: ".$row["Nama"]."    Kantor: ".$row["Kantor"]."<br>";
        }
}

$tescon->close();
?>
