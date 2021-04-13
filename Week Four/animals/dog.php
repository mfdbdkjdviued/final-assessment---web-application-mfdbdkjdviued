<html>
<head>
<title>Animals</title>

</head>
<style type="text/css">
body{
}
     .row{
		
        
        
		
	 }
     img{
         width:300px;
         height:300px;
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
<div class="form-group">
             <a  href="logout.php">logout</a>
            </div>
<div class='row'>
<?php
$curl = curl_init();
curl_setopt($curl,CURLOPT_RETURNTRANSFER,1);
if(isset($_GET['animals'])){
    $animals = $_GET['animals'];
}
else{
    $animals= 5;
}
 $key="9844d8dbe67158850cfcfcc81fc998a0";
 $type="1";
 //$name="哈士奇";
 $query = array(
    "key" => $key,
    "type"=>$type,
    //"name"=>$name,
 );

$url = "http://api.tianapi.com/txapi/pet/index"."?".http_build_query($query);
curl_setopt($curl,CURLOPT_URL,$url);
print $url;
echo"<br></br>";
$results= json_decode(curl_exec($curl));
// var_dump($result);

foreach($results->newslist as $result){
    echo"<img src='".$result->coverURL."'><br>";
$width = 200;
$height = 200;
    echo"EngName:".$result->engName."<br>";
    echo"name:".$result->name."<br>";
    echo"characters:".$result->characters."<br>";
    echo"Nation:".$result->nation."<br>";
    echo"Easy Of Disease:".$result->easyOfDisease."<br>";
    echo"Life:".$result->life."<br>";
    echo"Price:".$result->price."<br>";
    echo"Desc:".$result->desc."<br>";
    echo"Feature:".$result->feature."<br>";
    echo"Charater Feature:".$result->characterFeature."<br>";
    echo"Care Know Ledge:".$result->careKnowledge."<br>";
    echo"feed Points:".$result->feedPoints."<br>";
    echo"<br></br>";
}

?>
</div>
</body>
</html>