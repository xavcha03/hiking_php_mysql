<?php
//Connexion
require("bdConnection.php");
//Query
$query = "SELECT * FROM hiking";
$stm = $db->prepare($query);
$stm->execute();

$hikings = $stm->fetchAll();
?>

<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <title>Randonnées</title>
  <link rel="stylesheet" href="css/basics.css" media="screen" title="no title" charset="utf-8">
</head>

<body>
  <h1>Liste des randonnées</h1>
  <table>
    <tr>
      <th>Nom de la randonnée</th>
      <th>Difficulté</th>
      <th>Distance</th>
      <th>Durée</th>
      <th>Dénivélation</th>

    </tr>
    <?php
    foreach ($hikings as $hiking) {
    ?>
      <tr>
        <td><?= $hiking['name'] ?></td>
        <td><?= $hiking['difficulty'] ?></td>
        <td><?= $hiking['distance'] ?></td>
        <td><?= $hiking['duration'] ?></td>
        <td><?= $hiking['height_difference'] ?></td>
        <td>
          <a href="./update.php?id=<?= $hiking['id'] ?>">Edit</a>
          <a href="./delete.php?id=<?= $hiking['id'] ?>">Delete</a>
        </td>
      </tr>
    <?php
    }
    ?>
  </table>
</body>

</html>