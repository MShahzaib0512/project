<!DOCTYPE html>
<html>
<head>
   <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title></title>
    <link rel="stylesheet" href="./css/bootstrap.min.css">
    <link rel="stylesheet" href="./css/style.css">
    <script>src="./js/bootstrap.bundle.min.js"</script> 
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous"> 
   <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            text-align: center;
        }

        h1 {
            color: #333;
        }

        form {
            background-color: #fff;
            border-radius: 10px;
            padding: 20px;
            width: 400px;
            margin: 0 auto;
        }

        label {
            font-weight: bold;
            display: block;
            margin-bottom: 5px;
        }

        input[type="text"],
        input[type="email"],
        input[type="tel"],
        textarea,
        input[type="number"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        input[type="submit"] {
            background-color: #007BFF;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
   
   
<?php
$id = $_GET['id'];
// 1. db connect 
include ("db_conection.php");


// 2. pick fron db
 $slelect_query = "SELECT * FROM traditional_food WHERE id= $id ";

$result = $conn->query($slelect_query);

if ($result->num_rows > 0) {
 
  while($row = $result->fetch_assoc()) {

   
   ?>

<form action="update_traditional.php" method="post" enctype="multipart/form-data"> 
      <input type="hidden" name="id" value="<?php echo $row["id"]; ?>">
      
      <label for="name">Name:</label>
      <input type="text" id="name" name="name" value="<?php echo $row["name"]; ?>" required>

      <label for="phone">Price:</label>
      <input type="tel" id="price" name="price" value="<?php echo $row["price"]; ?>" required>


      <label for="food_item">Image:</label>
      <input type="file" id="image" name="image" value="<?php echo $row["image"]; ?>" ><br>

      <input type="submit" name="submit" value="submit">
    </form>
   <?php
  }
} else {
  echo "0 results";
}
$conn->close();
?>
</body>
</html>