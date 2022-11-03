<?php 
include("../config/conexion.php");



$titulo = $_POST['titulo'];
$descripcion = $_POST['descripcion'];
$año = $_POST['año'];
$formato = $_POST['formato'];

$file_name = $_FILES['file']['name'];
$file_tmp = $_FILES['file']['tmp_name'];

$route = "archivos_guardados/" . $file_name;
move_uploaded_file($file_tmp,$route);

$sql = "INSERT INTO `product_details`(`name`, `brand`, `price`, `ram`, `storage`, `imagen`, `status`) VALUES ('$titulo','$descripcion','$año', 'SENA' ,'$formato','$file_name','1')";
$sql_query = mysqli_query($conexion,$sql);



if($sql){
    print "<script>alert(\"Se subio correctamente\");
		window.location='../vista/formulario_fotos.php';</script>";
}
else{
    print "<script>alert(\"Error no se pudo procesar informacion\");
		window.location='formulario.php';</script>";
}

?>

