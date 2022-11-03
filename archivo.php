
<!DOCTYPE html>
<html lang="en">
<head><!--Head-->
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<head>
	<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-slider/11.0.2/css/bootstrap-slider.min.css" rel="stylesheet"/>
    <link rel="stylesheet" href="vista/css/style.css">
    <link rel="stylesheet" href="vista/css/index.css" >
    <link rel="stylesheet" href="vista/css/archivo.css">
    <!-- JavaScript Bundle with Popper -->
    <script src="bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/5.1.3/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-slider/11.0.2/bootstrap-slider.min.js"></script>
    <script src="js/search.js"></script>
    
    <link rel="icon" href="logo/logoM.png">
    <title>Busqueda fotos</title>
</head>
<body>

    <!-- Header -->
    <div class="header-flex">
        <nav class=" navbar p-0">
            <div class="container-fluid">
                <div class="w-100 navbar-brand" href="#" style="margin-right: 0px;">
                    <div class="row row-cols-3 justify-content-between" style="margin-right: 0px;">
                        <div class="align-self-center w-auto">
                                <a href="../index.php">
                                    <img src="logo/logoM.png" alt="" class="logo">
                                </a>
                        </div>
                                <!-- botones de redireccion -->
                        <div class="align-self-center justify-content-center">
                            <a class="btn btn-outline-light" href="index.php">Inicio</a>
                            <a class="btn btn-outline-light" href="./vista/historia.php">Historia</a>
                            <a class="btn btn-outline-light" href="archivo.php">Archivos</a>
                            <a class="btn btn-outline-light" href="./vista/recuerdos.php">Recuerdos</a>
                            <a class="btn btn-outline-light" href="./vista/contacto.php">Contacto</a>
                        </div>
                    </div>
                </div>
            </div>
        </nav>
        
        <div class="boton_form"><center>
            <a href="vista/libros.php"><button  class="form_boton">Ver Libros (PDF)</button></a>
            <a href="vista/formulario.php"><button  class="form_boton">Subir otro tipo de archivo</button></a>
            <a href="vista/formulario_fotos.php"><button  class="form_boton">Subir Imagenes</button></a>
        </center></div>
    </div>
    </div>
    <!-- /Header -->

    <div style="position: z-index 1;">
    <div class="containerimg">		
	<?php
	include 'class/Product.php';
	$product = new Product();	
	?>	
	<div class="row">
	<div class="col-md-3">                    
		<div class="list-group">
        <div class="Titulo_lateral"><h3>Año</h3></div>
			<div class="d-flex justify-content-center">	
				<div class="entrada">
					<input id="priceSlider" data-slider-id='ex1Slider' type="text" data-slider-min="2004" data-slider-max="2022" data-slider-step="1" data-slider-value="14"/>
					<div class="priceRange">2004 - 2022</div>
					<input type="hidden" id="minPrice" value="" />
					<input type="hidden" id="maxPrice" value="2022" />   
				</div>	
			</div>		
		</div>    <br>
		<div class="list-group">
        <div class="Titulo_lateral"><h3>Categoria</h3></div>
			<div class="brandSection">
				<?php
				$brand = $product->getBrand();
				foreach($brand as $brandDetails){	
				?>
				<div class="list-group-item checkbox" style="background: rgba(248, 247, 247, 0.692);">
				<label><input type="checkbox" class="productDetail brand" value="<?php echo $brandDetails["brand"]; ?>"  > <?php echo $brandDetails["brand"]; ?></label>
				</div>
				<?php }	?>
			</div>
		</div>
    
		<div class="list-group">
			<div class="Titulo_lateral"><h3>Tipo Soporte</h3></div>
            <div class="brandSection">
                    <?php
                    $storage = $product->getStorage();
                    foreach($storage as $storageDetails){	
                    ?>
                    <div class="list-group-item checkbox" style="background: rgba(248, 247, 247, 0.692);">
                    <label><input type="checkbox" class="productDetail storage" value="<?php echo $storageDetails['storage']; ?>"  > <?php echo $storageDetails['storage']; ?></label>
                    </div>
                    <?php
                    }
                    ?> 
            </div>
		</div>
	</div>
	<div class="col-md-9">
	 <br />
		<div class="row searchResult">
		</div>
	</div>
    </div>	
</div>	
</div><BR></BR>
<!-- Footer -->
<footer class="page-footer font-small teal pt-4">

  <!-- Footer Text -->
  <div class="container-fluid text-center text-md-left">

    <!-- Grid row -->
    <div class="row">

      <!-- Grid column -->
      <div class="col-md-6 mt-md-0 mt-3">

        <!-- Content -->
        <p><img class="footer_logo" src="./logo/logo.png" alt=""></p>

      </div>
      <!-- Grid column -->

      <hr class="clearfix w-100 d-md-none pb-3">

      <!-- Grid column -->
      <div class="col-md-6 mb-md-0 mb-3">
      <div class="align-self-center w-auto" style="color:white;">
      
      <div class="align-middle"><h3>Memoria</h3><h5> Cenigraf</h5></div>
      <br>

      </div>
      <!-- Grid column -->

    </div>
    <!-- Grid row -->

  </div>
  <!-- Footer Text -->

  <!-- Copyright -->
  <!-- Copyright -->

</footer>
</body>
</html>