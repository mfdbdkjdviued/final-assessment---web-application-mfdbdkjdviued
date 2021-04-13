<!DOCTYPE html>
<html>
<head>
	<title>Create</title>
	<<?php require 'css.php'?>

</head>
<body>
	<div class='container'>
		<?php include 'nav.php';?>
		<div class='row'>
			<div class='col-12'>

<?php 
		


	require 'config.php';

	$sql = "INSERT INTO pokedex VALUES ('".$_POST["pokedex_number"]."','".$_POST["pokemon_name"]."','".$_POST["abilities"]."','".$_POST["classification"]."','".$_POST["attack"]."','".$_POST["defense"]."','".$_POST["hp"]."','".$_POST["speed"]."','".$_POST["type1"]."','".$_POST["type2"]."','".$_POST["height_m"]."','".$_POST["weight_kg"]."','".$_POST["generation"]."','".$_POST["is_legendary"]."','".$_POST["icon"]."')";

	if ($connection->query($sql) === TRUE){
		echo "New record created successfully";
	}
	else{
		echo "Richard, you failed... BADLLYYYY";
	}

	$connection->close();
 ?>
</div></div></div>

</body>
</html>