<!DOCTYPE html>
<html>
<head>
	<title>Update</title>
	<?php require 'css.php'?>

</head>
<body>
	<div class='container'>
		<?php include 'nav.php';?>
				<div class='row'>
					<div class='col-12'>
	<?php
		require 'config.php';


		$sql = "SELECT * FROM pokedex WHERE pokedex_number = ".$_GET['id'];
		$result = mysqli_query($connection, $sql);

		if(mysqli_num_rows($result) > 0 ){
			while($row = mysqli_fetch_assoc($result)){
				echo "<form action='update.php?id=".$_GET['id']."' method='post'>
					<label>Pokemon Name: </label><input type='text' name='name' value='".$row['name']."'><br>
					<label>Pokemon Attack: </label><input type='text' name='attack' value='".$row['attack']."'><br>
					<label>Pokemon Defense: </label><input type='text' name='defense' value='".$row['defense']."'><br>
					<label>Pokemon HP: </label><input type='text' name='hp' value='".$row['hp']."'><br>
					<label>Pokemon Speed: </label><input type='text' name='speed' value='".$row['speed']."'><br>
						<br>
						<br>
						<input type='submit' name='submit'>
					</form>";

				}
			}

			if ($_SERVER["REQUEST_METHOD"] == "POST"){
				$sqlupdate = "UPDATE pokedex SET name = '".$_POST['name']."', attack = '".$_POST['attack']."', defense = '".$_POST['defense']."', hp = '".$_POST['hp']."', speed = '".$_POST['speed']."' WHERE pokedex_number = ".$_GET['id'];
				

				if ($connection->query($sqlupdate) === TRUE){
					echo "New record updated successfully, <a href='index.php'>click here</a> to leave this page";
				}
				else{
					echo "Update Failed, please try again later";
				}





			}





	?>
</div></div></div>
</body>
</html>