<?php

/**** Supprimer une randonnée ****/
include("./bdConnection.php");
$query = "DELETE FROM hiking WHERE id = :id";
$stm = $db->prepare($query);
$stm->bindParam(':id', $_GET['id']);
$stm->execute();

header('Location: read.php');
