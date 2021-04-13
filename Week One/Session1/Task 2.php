<!DOCTYPE html>
<html>
 <head>
   <title>Work</title>
 </head>
 <body>
   <h1><?php echo "Hello World !" ;?></h1>
        
            <?php
            
            // Question 2 
            $string1 = "Birmingham";
            $string2 = "City";
            echo $string1;
            echo "<br/>";
            echo $string2;
            echo "<br></br>";
                
            // Question 3
             $x=15;
             $y=7;
             $numadd = $x+$y;
             $numsub = $x-$y;
             $nummult = $x*$y;
             $numdiv = $x/$y;
             $nummod = $x%$y;
             echo" $x + $y = $numadd <dr></br> ";
              -$y;
             echo" $x - $y = $numsub <dr></br> ";
             echo" $x * $y = $nummult <dr></br> ";
             echo" $x / $y = $numdiv <dr></br> ";
             echo" $x % $y = $nummod <dr></br> ";
             echo "<br></br>";


            // Question 4
             $variable = 8;
             $b =2;
             $a = 4;
             $c = 5;
             $d = 3;
             echo"Value is now $variable <dr></br>";
             $variable = $variable += $b;
             echo" Add 2. Value is now  $variable <dr></br>";
             $variable = $variable -= $a;
             echo"Subtract 4. Value is now  $variable <dr></br>";
             $variable = $variable *= $c;
             echo"Multiply by 5. Value is now  $variable <dr></br>";
             $variable = $variable/$d;
             echo"Divide by 3. Value is now  $variable <dr></br>";
             $variable = ++$variable;
             echo"Increment value by one. Value is now  $variable <dr></br>";
             $variable = --$variable;
             echo" Decrement value by one. Value is now  $variable <dr></br>";
             echo "<br></br>";



             // Question 5
             $name = "Harry";
             $age1 = 5;
             $age2 = 28;
             var_dump($name);
             echo "<br/>";
             echo $name;
             echo "<br/>";
             var_dump($age2);
             echo "<br/>";
             echo $age2;
             echo "<br/>";
             
    
             echo "<br></br>";


             // Question 6
             $around="What goes around comes around.<br>";
             echo "$around";
             echo '$around';
             echo "<br></br>";



              // Question 177
              // String (or Text)
              $whatis = "week";
              echo "Value is ".gettype($whatis)."<br/> \n ";

              // Double (A number with a decimal place after it)
              $whatis = 66.9;
              echo "Value is ".gettype($whatis)."<br/>\n";

              //Boolean (True or False)
              $whatis = true;
              echo "Value is ".gettype($whatis)." <br/>\n";

              // Integer (or whole number)
              $whatis = 5;
              echo "Value is ".gettype($whatis)." <br/>\n";

              // Null (or Empty)
              $whatis = null;
              echo "Value is ".gettype($whatis)." <br/>\n";
              echo "<br></br>";



      ?>
 </body>
</html>