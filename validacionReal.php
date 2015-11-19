<?php
header('Content-Type: text/javascript; charset=UTF-8'); 
$resultados = array();

$conexion = mysqli_connect("localhost", "ucymxbzr_alan", "maimo!123", "ucymxbzr_wahsalud");
mysqli_query($conexion, "SET NAMES 'UTF8'");




/* Extrae los valores enviados desde la aplicacion movil */
$usuarioEnviado = $_GET['usuario'];
$passwordEnviado = $_GET['password'];

/* revisar existencia del usuario con la contraseña en la bd */
$sqlCmd = "SELECT nombreUsuario, password, IDusurio FROM usuario
WHERE nombreUsuario
LIKE '".mysqli_real_escape_string($conexion,$usuarioEnviado)."' 
AND password ='".mysqli_real_escape_string($conexion,$passwordEnviado)."'
LIMIT 1";


$sqlQry = mysqli_query($conexion,$sqlCmd);

if(mysqli_num_rows($sqlQry)>0){

	$login=1;



$fila = mysqli_fetch_array($sqlQry); //hago esto para poder extraer el id usuario que peciso.
    
	$IDusurio =  $fila["IDusurio"];
    

	// nueva consulta para listar proyectos en base al id del usuario que se registro.


	$sqlU = "SELECT nombreUsuario FROM usuario WHERE IDusurio = '$IDusurio'";
    
    $sqlQryU = mysqli_query($conexion,$sqlU);
    
    while ($r = mysqli_fetch_assoc($sqlQryU)){ // tiene q ser assoc para que no me cree arrays multimedimensional, probar que muestra un echo con array y otro con assoc
		$resultados[] = $r;
	}
    
    	/*$sqlLogro = "SELECT * FROM `usuariotienelogro` WHERE `IDusuario` = '$IDusurio'";
    
    */
    
    
    	$sqlLogro = "SELECT * FROM `usuariotienelogro` INNER JOIN logroybeneficios ON logroybeneficios.IDlogro = usuariotienelogro.IDlogro WHERE `IDusuario` = '$IDusurio'";
    
    $sqlQryLogro = mysqli_query($conexion,$sqlLogro);
    
    while ($l = mysqli_fetch_assoc($sqlQryLogro)){ // tiene q ser assoc para que no me cree arrays multimedimensional, probar que muestra un echo con array y otro con assoc
		$resultados["logros"][] = $l;
	}
    
    
    $sqlLogroLista = "SELECT * FROM `logroybeneficios` LIMIT 6";
    
    $sqlQryLogroLista = mysqli_query($conexion,$sqlLogroLista);
    
    while ($lista = mysqli_fetch_assoc($sqlQryLogroLista)){ // tiene q ser assoc para que no me cree arrays multimedimensional, probar que muestra un echo con array y otro con assoc
		$resultados["logrosListas"][] = $lista;
	}
    
    
     
  
	

}else{

	$login=0;


}




$resultados["validacion"] = "neutro";



if( $login==1 ){



$resultados["validacion"] = "ok";


}else{


$resultados["validacion"] = "error";
}


$resultadosJson = json_encode($resultados);

/*muestra el resultado en un formato que no da problemas de seguridad en browsers */
echo $_GET['jsoncallback'] . '(' . $resultadosJson . ');';

?>