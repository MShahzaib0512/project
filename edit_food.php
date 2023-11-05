<?php
session_start();
if($_SESSION["islogin"] != "true")
	 header('Location: dashboard.php');
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title></title>
	 <link rel="stylesheet" href="./css/bootstrap.min.css">
    <link rel="stylesheet" href="./css/style.css">
    <script>src="./js/bootstrap.bundle.min.js"</script> 
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous"> 
    <link rel="icon" href="/path-to-your-favicon.ico" type="image/x-icon">
    <style>
       .button{
          height: 50px;
         width: 200px;
         background-color:#17a2b8;
         border-radius: 2px;
         padding: 8px 0px ;
         border :2px solid #17a2b8;
       }
    </style>
</head>
<body>
	<div class="container" style="row-gap: 10px;column-gap: 10px;display: flex;align-items: center;justify-content: center;height: 25rem;margin-top:50px ; flex-direction: column;">
      <button class="button"><a class="text-white" href="edit_chienes.php" >Chinese Food</a></button><br>
         <button class="button"><a class="text-white" href="edit_korean.php" > Korean  Food</a></button><br>
            <button class="button"><a class="text-white" href="edit_japanese.php" >Japanese Food</a></button><br>
             <button class="button"><a class="text-white" href="edit_french.php" > French Food</a></button><br>
         <button class="button"><a class="text-white" href="edit_spanish.php"> Spanish  Food</a></button><br>
            <button class="button"><a class="text-white" href="edit_italian.php" >Italian Food</a></button><br>
              <button class="button"><a class="text-white" href="edit_traditional.php" >Traditional Food</a></button><br>
            
           
      </div>
</body>
</html>