<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="../logo/logoM.png">
    <title>Document</title>
</head>
<body>
    <?php 
    include("../Config/conexion.php");
		$sql="SELECT * from libros WHERE id =".$_GET['id'];
		$result=mysqli_query($conexion,$sql);

		if($mostrar=mysqli_fetch_array($result)){
            if ($mostrar['libro']==""){?>
            <p>NO TIENE </p>
            <?php 
            } else { 
                header('content-type: application/pdf');
                readfile('../Controlador/archivos_guardados/'.$mostrar['libro']);
            }
                } 
            ?> 
</body>
</html>

