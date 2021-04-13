<html>
<head>
<title>Exerise 1</title>
</head>
<body>



 <h1> question 1 </h1>
 <?php
   $sum = 0;
    for($i=0;$i <= 30;$i++){
       $sum += $i;
      }
      echo $sum ;

      ?>


<h1> question 2 </h1>
<?php
//Number of control layers
for($i=1;$i<=5;$i++){
    //Control the number of "*" in each layer
    for($j=1;$j<=$i;$j++){
    echo  "*";
     }
    echo  "<br/>";
     }
?>
  <h1> question 3 </h1>
           <?php 
              
              $k = 4;
              $l = 1;
              for($i=1;$i<=$k-1;$i++){
               $l *=($i+1);
              }
              echo" $l";




            ?>
            <h1> Question 4 </h1>
           
           <?php 
            echo"<table width= '400' height= '400' border='1' " ;
           for($row = 1;$row <=8;$row++){
                    echo"<tr>";
          
           for($col = 1;$col <=8;$col++){
                   
           
             $box = $row + $col;

             if($box%2 == 1){

             echo"<td width=30px height=30px bgcolor=#ffffff></td>";
             
             }
            else
            {
            	
             echo"<td width=30px height=30px bgcolor=#000000></td>";
            }
             }
             echo"</tr>";
         }
         echo "</table>";
            ?>

<h1> question 5 </h1>
           <?php 
             

             $bar = date('F',time());
             if ($bar == "December"){
                echo "It's December ,here comes the snow.";
             }
             else{
                echo "It's not December so you can keep the heating off.";
             }
               ?>
        <h1> question  6</h1>
        <?php 
     echo"<h2> While Loop</h2>";
        $count = 0;
        while ( $count !== 9) {
        	echo "abc ";
        	 $count ++;
        	
        }
        echo "<br></br> ";
         echo"<h2>Do While Loop</h2>";
        $eggs = 0;
		do {
			echo " xyz  ";
			$eggs++;
		}

		while ($eggs <= 9);

        echo "<br></br> ";
        echo"<h2>For Loop</h2>";
        for ($i=1; $i < 10; $i++) { 
        	echo " $i ";
        }
        echo "<br></br> ";
        for ($i="Item A"; $i < "Item G"; $i++) { 
        	echo "$i </br>";
        }
        ?>



           

</body>
</html>