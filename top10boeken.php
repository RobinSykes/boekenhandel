<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<link rel="stylesheet" type="text/css" href="top10.css" media="screen"/>
<body>
<a href="index.php" id="hoofdpagina">hoofdpagina</a>
<?php
    echo '<h3>top 10 boeken</h3><br>';

$host = 'localhost';
$dbname = 'boeken';
$username = 'root';
$password = '';

$conStr = "mysql:host=$host;dbname=$dbname";
$con = new PDO($conStr, $username, $password);

$stmt = "SELECT * FROM top10 WHERE rating > 0 ORDER BY rating";
$sth = $con->prepare($stmt);
$sth->execute();
?>
<?php while($row = $sth->fetch()) { ?>
        <div>
            <td><?php echo $row["naam"]; ?></td>
            <td><?php echo $row["auteur"]; ?></td>
            <td><a href="informatieboeken.php?id=<?php echo $row["id"]?>">informatie</a></td>
        </div>
    <?php 
} ?>

</body>
</html>