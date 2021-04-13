<!DOCTYPE html>
<html>
<head>
	<title>PHP Database Test</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

</head>
<body>
	<?php
		$servername = "localhost";
		$username = "root";
		$password = "";
		$dbname = "book";

		$connection = new mysqli($servername, $username, $password, $dbname);

		if ($connection->connect_error){
			die("Connection Failed: ".$connection->connect_error);
		}
		else{
			echo "Connected successfully to the ".$dbname." database<br>";
		}

		$sql = "SELECT * FROM books";

		$result = mysqli_query($connection, $sql);

		if (!$result){
			die("Database query failed. ");
		}
		else{
			echo "Database Query '$sql' Successfully.<br>";
		}


		if(mysqli_num_rows($result) > 0){
			echo "<table border='1'>
					<tr><th>cover</th><th>BookID</th><th>Title</th><th>Author</th><th>Publisher</th><th>Publication</th><th>Subject</th><th>ISBN</th><th>Review</th><th>Link</th></tr>";
			while($row = mysqli_fetch_assoc($result)){
				echo "
				    <tr><td><img src='".$row['cover']."' height='33px'></td>
				    <td>".ucfirst($row["BookID"])."</td>
				    <td>".ucfirst($row["Title"])."</td>
				    <td>".ucfirst($row["Author"])."</td>
				    <td>".ucfirst($row["Publisher"])."</td>
				    <td>".ucfirst($row["Year"])."</td>
				    <td>".ucfirst($row["Subject"])."</td>
				    <td>".ucfirst($row["ISBN"])."</td>
				    <td>".ucfirst($row["Review"])."</td>
				    <td><a href = '".($row["Link"])."'>".($row["Link"])."></td>
                    


				<tr>";

			}
			echo "</table>";
		}

		mysqli_close($connection);


	?>
</body>
</html>