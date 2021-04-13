<html>
<head>
<title></title>
</head>
<body>
<nav class="navbar navbar-default" role="navigation">
	<div class="container-fluid">
	<div class="navbar-header">
		<a class="navbar-brand" href="#">Food Guery</a>
	</div>
	<div>
		<ul class="nav navbar-nav">
			<li class="active"><a href="menu.php">Home</a></li>
		
		
				
			</li>
      <form class="navbar-form navbar-left"action="dog.php" role="search">
        <div class="form-group">
            <input type="text" class="form-control" placeholder="Search">
        </div>
       <button type="submit" class="btn btn-default">submit</button>
    </form>
    <?php
              if (isset($_SESSION['loggedin'])){
              if ($_SESSION['loggedin'] === TRUE){
                    echo'<li class="nav navbar-nav">
                        <a class="btn btn-default" href="logout.php" >Logout</a>
                      </li>';
                    }}
                  else{
                      echo'<li class="nav navbar-nav">
                        <a class="btn btn-default" href="login.php">Login</a>
                      </li>';
                    }

            ?>
		</ul>
	</div>
	</div>
</nav>
</body>
</html>