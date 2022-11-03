<?php 
include("../Config/conexion.php");



$titulo = $_POST['titulo'];
$año = $_POST['año'];
$formato = $_POST['formato'];
$historia = $_POST['historia'];
$autor = $_POST['autor'];

$file_name = $_FILES['file']['name'];
$file_tmp = $_FILES['file']['tmp_name'];

$route = "archivos_guardados/" . $file_name;
move_uploaded_file($file_tmp,$route);

$sql= "INSERT INTO libros(titulo, año, formato, historia, autor, libro) VALUES ('$titulo','$año','$formato','$historia','$autor','$file_name')";
$sql_query = mysqli_query($conexion,$sql);



if($sql){
    print "<script>alert(\"Se subio correctamente\");
		window.location='../Vista/libros.php';</script>";
}
else{
    print "<script>alert(\"Error no se pudo procesar informacion\");
		window.location='formulario.php';</script>";
}

?>


