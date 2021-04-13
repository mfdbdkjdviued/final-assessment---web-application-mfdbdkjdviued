<!DOCTYPE html>
<html>
<head>
	<title>Delete</title>
	<?php require 'css.php'?>

</head>
<body>
	<div class='container'>
		<?php include 'nav.php';?>
		<div class='row'>
			<div class='col-12'>
	<?php
		require 'config.php';

		
		$sqldelete = "DELETE FROM pokedex WHERE pokedex_number = ".$_GET['id'];

		?>
		<form action="delete.php?id=<?php echo $_GET['id']; ?>&name=<?php echo $_GET['name']; ?>" method='post'>
			<lable> Please tick this box if you 100% want to delete the pokemon <?php echo $_GET['name']; ?> from your Pokedex</lable><br>
			<input type="checkbox" name="confirm">
			<input type="submit" name="submit">	
		</form>

		


		<?php



			if ($_SERVER["REQUEST_METHOD"] == "POST"){
				if ($_POST['confirm'] == "on"){

					$sqldelete = "DELETE FROM pokedex WHERE pokedex_number = ".$_GET['id'];
					if ($connection->query($sqldelete) === TRUE){
						echo "New record deleted successfully, <a href='read.php'>click here</a> to leave this page";
					}
					else{
						echo "Delete Failed, please try again later";
					}
				}
				else{
					echo "To delete this Pokemon, please ensure you select the box above.";
				}





			}





	?>
</div></div></div>
</body>
</html>