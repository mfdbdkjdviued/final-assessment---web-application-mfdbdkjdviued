<!DOCTYPE html>
<html>
<head>
	<title>Add a Pokemon to our Database</title>
	<?php require 'css.php'?>

</head>
<body>
	<div class='container'>
		<?php include 'nav.php';?>
		<div class='row'>
			<div class='col-12'>
	<form action='create2.php' method='POST'>
		<label>Pokedex Number:</label><input type="text" name="pokedex_number" required><br>
		<label>Pokemon Name:</label><input type="text" name="pokemon_name" required><br>
		<label>Abilities:</label><input type="text" name="abilities" required><br>
		<label>Classification:</label><input type="text" name="classification" required><br>
		<label>Attack:</label><input type="text" name="attack" required><br>
		<label>Defense:</label><input type="text" name="defense" required><br>
		<label>HP:</label><input type="text" name="hp" required><br>
		<label>Speed:</label><input type="text" name="speed" required><br>
		<label>Type (1):</label>
			<select name="type1" required>
				<option value="Bug">Bug</option>
				<option value="Dark">Dark</option>
				<option value="Dragon">Dragon</option>
				<option value="Electric">Electric</option>
				<option value="Fairy">Fairy</option>
				<option value="Fighting">Fighting</option>
			</select>
		<br>
		<label>Type (2):</label>
		<select name="type2">
				<option value=""></option>
				<option value="Bug">Bug</option>
				<option value="Dark">Dark</option>
				<option value="Dragon">Dragon</option>
				<option value="Electric">Electric</option>
				<option value="Fairy">Fairy</option>
				<option value="Fighting">Fighting</option>
			</select>
		<br>
		<label>Height (M):</label><input type="text" name="height_m" required><br>
		<label>Weight (kg)</label><input type="text" name="weight_kg" required><br>
		<label>Generation: </label><input type="text" name="generation" required><br>
		<label>Is Legendary?</label><input type="text" name="is_legendary" required><br>
		<label>Icon</label><input type="text" name="icon" required><br>
		<input type="submit">




	</form>

</div></div></div>
</body>
</html>