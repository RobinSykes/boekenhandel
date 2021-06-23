<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="informatie.css" media="screen"/>
    <title>Document</title>
</head>
<body>
<div class="buttons">
        <a href="top10boeken.php" id="top10">top 10 boeken</a>
        <a href="index.php" id="hoofdpagina">hoofdpagina</a>
    </div>
    <?php
    $host = 'localhost';
    $dbname = 'boeken';
    $username = 'root';
    $password = '';
 
    $conStr = "mysql:host=$host;dbname=$dbname";
    $con = new PDO($conStr, $username, $password);
 
    $id = $_GET['id'];
    $stmt = "SELECT * FROM top10 WHERE id=?";
    $params = [$id];
 
    $sth = $con->prepare($stmt);
    $sth->execute($params);
 
    $row = $sth->fetch();
 
 
    echo 'Naam:' . $row['naam'] . '<br>';
    echo 'Auteur: ' . $row['auteur'] . '<br>';
?>

</body>
</html>
