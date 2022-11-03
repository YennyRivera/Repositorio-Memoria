<?php include("../Config/conexion.php");?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="../logo/logoM.png">
    <title>Recuerdos</title>
    <link rel="stylesheet" href="css/index.css" >
    <link rel="stylesheet" href="css/libros.css">
    <!-- CSS only -->
    <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- JavaScript Bundle with Popper -->
    <script src="../bootstrap/js/bootstrap.bundle.min.js"></script>
</head>
<body>
    <!-- Header -->
    <div class="header-flex" style="top: 0px;">
        <nav class=" navbar p-0">
            <div class="container-fluid">
                <div class="w-100 navbar-brand" href="#">
                    <div class="row row-cols-3 justify-content-between">
                        <div class="align-self-center w-auto">
                                <a href="../index.php">
                                    <img src="../logo/logoM.png" alt="" class="logo">
                                </a>
                        </div>
                         <!-- botones de redireccion -->
                            <div class="align-self-center justify-content-center">
                                <a class="btn btn-outline-light" href="../index.php">Inicio</a>
                                <a class="btn btn-outline-light" href="historia.php">Historia</a>
                                <a class="btn btn-outline-light" href="../archivo.php">Archivos</a>
                                <a class="btn btn-outline-light" href="recuerdos.php">Recuerdos</a>
                                <a class="btn btn-outline-light" href="contacto.php">Contacto</a>
                            </div>
                    </div>
                </div>
            </div>
        </nav>
        
        <div class="boton_form"><center>
            <a href="formulario_libros.php"><button  class="form_boton">Subir Libros (PDF)</button></a>
            <a href="formulario.php"><button  class="form_boton">Subir otro tipo de archivo</button></a>
            <a href="formulario_fotos.php"><button  class="form_boton">Subir Imagenes</button></a>
        </center></div>
    </div>
    </div>
    <!-- /Header -->


    
    <!-- Imagenes -->



    <center>
    <div id="main-container" style="margin-top: 200px;">
    <table>
  <thead>
    <tr>
            <th scope="col">Titulo</th>
			<th scope="col">Año</th>
			<th scope="col">Formato</th>
			<th scope="col">Historico</th>
			<th scope="col">Autor</th>
            <th scope="col">Libro</th>
    </tr>
  </thead>

		<?php 
		$sql="SELECT * from libros";
		$result=mysqli_query($conexion,$sql);

		while($mostrar=mysqli_fetch_array($result)){
		 ?>

		<tr>
			<td><?php echo $mostrar['titulo'] ?></td>
			<td><?php echo $mostrar['año'] ?></td>
			<td><?php echo $mostrar['formato'] ?></td>
			<td><?php echo $mostrar['historia'] ?></td>
			<td><?php echo $mostrar['autor'] ?></td>
            <td><a href="descargar_libro.php?id=<?php echo $mostrar['id']?>" target="_blank"><button  class="form_boton">Ver Libro</button></a></td>
		</tr>
	<?php 
	}
	 ?>
	</table></div></center>
    

    <!-- /Imagenes -->


    <?php include_once('footer.php'); ?>


