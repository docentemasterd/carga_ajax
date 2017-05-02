<?php
require("conn.php");
$link = mysqli_connect($host, $user, $pass, $db);
if (!$link) {
 echo "Error: No se pudo conectar a MySQL." . PHP_EOL;
 echo "errno de depuración: " . mysqli_connect_errno() . PHP_EOL;
 echo "error de depuración: " . mysqli_connect_error() . PHP_EOL;
 exit;
}

$query="SELECT id,nombre FROM provincias WHERE id_pais=".$_REQUEST["pais"]." ORDER BY nombre";
$result = mysqli_query($link, $query);

$provincias = array();
while (($fila = mysqli_fetch_array($result, MYSQLI_ASSOC)) != NULL) {
    $provincias[$fila['id']] = $fila['nombre'];
}
print_r(json_encode($provincias));

// Liberar resultados
mysqli_free_result($result);

// Cerrar la conexión
mysqli_close($link);

?>
