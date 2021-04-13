<html>
<head>
<title></title>
</head>
<style type="text/css">
body{background:#87CEFA;
}
     .row{
		
        text-align:center;
        
		
	 }
     img{
         width:500px;
         height:500px;
         padding-bottom:-550px;

     }
h1{
    color:#E6E6FA;
}
h3{
    color:#E6E6FA;
}
    </style>

<body>
<div class='row'>
<?php
$curl = curl_init();
curl_setopt($curl,CURLOPT_RETURNTRANSFER,1);
if(isset($_GET['id'])){

$id = $_GET['id'];
}
else{
    $id = 5;
}

$url = "https://pokeapi.co/api/v2/pokemon/".$id;
curl_setopt($curl,CURLOPT_URL,$url);
$result= json_decode(curl_exec($curl));
//echo json_encode($result);
print"<img src='".$result->sprites->front_default."'><br>";
$width = 200;
$height = 200;
print"<h1>".$result->name."</h1>";
print"<h3>Height:".$result->height."</h3>";
print"<h3>Weight:".$result->weight."</h3>";
?>
</div>
</body>
</html>