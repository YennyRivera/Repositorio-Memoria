<?php
class Product { 
	private $host  = 'localhost';
    private $user  = 'root';
    private $password   = ""; 
    private $database  = "memoria";   
	private $productTable = 'product_details';
	private $dbConnect = false;
    public function __construct(){
        if(!$this->dbConnect){ 
            $conn = new mysqli($this->host, $this->user, $this->password, $this->database);
            if($conn->connect_error){
                die("Error al conectar con MySQL: " . $conn->connect_error);
            }else{
                $this->dbConnect = $conn;
            }
        }
    }
	private function getData($sqlQuery) {
		$result = mysqli_query($this->dbConnect, $sqlQuery);
		if(!$result){
			die('Error en la consulta: ');
		}
		$data= array();
		
		/*while ($row = mysqli_fetch_array($result, MYSQL_ASSOC)) {*/
			while ($row = mysqli_fetch_assoc($result)) {
			$data[]=$row;            
		}
		return $data;
	}
	private function getNumRows($sqlQuery) {
		$result = mysqli_query($this->dbConnect, $sqlQuery);
		if(!$result){
			die('Error en la consulta: ');
		}
		$numRows = mysqli_num_rows($result);
		return $numRows;
	}		
	public function getBrand(){
		$sqlQuery = "
			SELECT DISTINCT(brand)
			FROM ".$this->productTable." 
			WHERE status = '1' ORDER BY id DESC";
        return  $this->getData($sqlQuery);
	} 
	public function getStorage(){
		$sqlQuery = "
			SELECT DISTINCT(storage)
			FROM ".$this->productTable." 
			WHERE status = '1' ORDER BY storage DESC";
        return  $this->getData($sqlQuery);
	}
	public function getRam(){
		$sqlQuery = "
			SELECT DISTINCT(ram)
			FROM ".$this->productTable." 
			WHERE status = '1' ORDER BY ram ASC";
        return  $this->getData($sqlQuery);
	}
	public function searchProducts(){
		$sqlQuery = "SELECT * FROM ".$this->productTable." WHERE status = '1'";
		if(isset($_POST["minPrice"], $_POST["maxPrice"]) && !empty($_POST["minPrice"]) && !empty($_POST["maxPrice"])){
			$sqlQuery .= "
			AND price BETWEEN '".$_POST["minPrice"]."' AND '".$_POST["maxPrice"]."'";
		}
		if(isset($_POST["brand"])) {
			$brandFilterData = implode("','", $_POST["brand"]);
			$sqlQuery .= "
			AND brand IN('".$brandFilterData."')";
		}
		if(isset($_POST["ram"])){
			$ramFilterData = implode("','", $_POST["ram"]);
			$sqlQuery .= "
			AND ram IN('".$ramFilterData."')";
		}
		if(isset($_POST["storage"])) {
			$storageFilterData = implode("','", $_POST["storage"]);
			$sqlQuery .= "
			AND storage IN('".$storageFilterData."')";
		}
		$sqlQuery .= " ORDER By id";
		$result = mysqli_query($this->dbConnect, $sqlQuery);
		$totalResult = mysqli_num_rows($result);
		$searchResultHTML = '';
		if($totalResult > 0) {
			/*while ($row = mysqli_fetch_array($result, MYSQL_ASSOC)) {*/
			while ($row = mysqli_fetch_assoc($result)) {
				$searchResultHTML .= '
				<div class="col-sm-3 col-lg-2 col-md-2" id="contenedor-producto">
					<div class="product">
						<img src="./controlador/archivos_guardados/'.$row['imagen'].'"  alt="" class="img-responsive" >
						<h5 style="color: #02253d;" align="center">'. $row['name'] .'</h5>
						<h6 style="color: #02253d;" align="center">'. $row['price'] .'</h6>
						<center><button type="button" class="btn" style="background-color:#02253d; border-color:#02253d; color:white" data-bs-toggle="modal" data-bs-target="#staticBackdrop">Ver</button>
					</div>

					<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<h4 class="modal-title" id="staticBackdropLabel">'. $row['name'] .'</h4>
									<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
								</div>

								<div class="modal-body" align="center" ><br>
									<img src="./controlador/archivos_guardados/'. $row['imagen'] .'"  alt="" class="img-responsive" ><br><br>
									<h4 style="color: #02253d;">'. $row['brand'] .'</h4>
									<h5 style="color: #02253d;">Año '. $row['price'] .'</h5>
									<h6 style="color: #02253d;">'. $row['storage'] .'</h6>
								</div>

								<div class="modal-footer">
									<center><button type="button" class="btn" style="background-color:#FF0000; color:white" data-bs-dismiss="modal">Cerrar</button>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				
				
				
				
				
				
				';
			}
		} else {
			$searchResultHTML = '<div class="load"><h3>No se ha encontrado ningún producto..</h3></div>';
		}
		return $searchResultHTML;	

	}	
}
?>