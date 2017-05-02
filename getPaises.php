<?php
require("conn.php");
$link = mysqli_connect($host, $user, $pass, $db);
if (!$link) {
 echo "Error: No se pudo conectar a MySQL." . PHP_EOL;
 echo "errno de depuración: " . mysqli_connect_errno() . PHP_EOL;
 echo "error de depuración: " . mysqli_connect_error() . PHP_EOL;
 exit;
}

$query="SELECT id,nombre FROM paises ORDER BY nombre";
$result = mysqli_query($link, $query);
        
echo '<option value="0">Seleccionar</option>';
while (($fila = mysqli_fetch_array($result, MYSQLI_ASSOC)) != NULL) {
    echo '<option value="'.$fila["id"].'">'.$fila["nombre"].'</option>';
}
// Liberar resultados
mysqli_free_result($result);

// Cerrar la conexión
mysqli_close($link);

?>
