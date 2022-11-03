<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="../logo/logoM.png">
    <title>Recuerdos</title>
    <link rel="stylesheet" href="css/index.css" >
    <link rel="stylesheet" href="css/formulario.css">
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
                          <!-- icono principal -->
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
              </div>
    <!-- /Header -->
    <center>
        <div class="boton_form">
        <a href="formulario_libros.php"><button  class="botonnav">Subir Libros (PDF)</button></a>
        <a href="formulario.php"><button  class="botonnav">Subir otro tipo de archivo</button></a>
        <a href="formulario_fotos.php"><button  class="botonnav">Subir Imagenes</button></a>
        </div></center>





    
<!--Form-->
<br><div class="feedback-form" id="feedback-form">
  <h2 class="header">Subir Imagenes</h2>
  <div>
    <form action="../Controlador/subirimagen.php" method="POST" enctype="multipart/form-data">
      <input type="text" name="titulo" placeholder="Titulo de la imagen" required></input>
      <input type="text" name="año" placeholder="Año de la imagen" required></input>
      <input type="text" name="descripcion" placeholder="Descripcion de la imagen" required></input>
      <input type="text" name="formato" placeholder="Formato de la imagen" required></input>
      <input type="file" id="file" name="file"></input>
      <button type="submit">Subir</button>

    </form>
  </div>
</div><br>
<!--/Form-->
<div style="margin-top: 80px;">
<?php include_once('footer.php'); ?>
</div>