<!DOCTYPE html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title></title>
</head>
<body>
<?php
$name = $_POST['name'];
$price = $_POST['price'];
$id = $_POST['id'];
// Handle image upload
    $image = $_FILES['image']['name'];
    $tempname=$_FILES["image"]["tmp_name"];
    $folder="images/".$image;
    $target_file = $folder . basename($_FILES["image"]["name"]);// 2. php connect to DB
include ("db_conection.php");



$sql_query = "UPDATE spanish_food SET name = '$name', price = '$price', image = '$image' WHERE id = '$id'";

if ($conn->query($sql_query) === TRUE) {
      if (move_uploaded_file($_FILES["image"]["tmp_name"], $target_file) && $conn->query($sql_query) === TRUE) {
        echo "New record created successfully";
    }
  // echo "Record updated successfully";
} 
else {
  echo "Error: " . $sql_query . "<br>" . $conn->error;
}

$conn->close();
// 4. confirmation message

?>
</body>
</html>