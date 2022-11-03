<?php 
include("../Config/conexion.php");



$titulo = $_POST['titulo'];
$año = $_POST['año'];
$descripcion = $_POST['descripcion'];
$formato = $_POST['formato'];

$file_name = $_FILES['file']['name'];
$file_tmp = $_FILES['file']['tmp_name'];

$route = "archivos_guardados/" . $file_name;
move_uploaded_file($file_tmp,$route);

$sql= "INSERT INTO archivos(titulo, año, descripcion, formato, archivo) VALUES ('$titulo','$año','$descripcion','$formato','$file_name')";

$sql_query = mysqli_query($conexion,$sql);



if($sql){
    print "<script>alert(\"Se subio correctamente\");
		window.location='../index.php';</script>";
}
else{
    print "<script>alert(\"Error no se pudo procesar informacion\");
		window.location='formulario.php';</script>";
}

?>