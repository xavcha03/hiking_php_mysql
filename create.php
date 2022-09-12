<?php
	require("./bdConnection.php");

	if(!empty($_POST)){
		$query = "INSERT INTO hiking
					(name, difficulty, distance, duration, height_difference)
					VALUES
					(:name, :difficulty, :distance, :duration, :height_difference)
		";
	$stm = $db->prepare($query);

	$stm->bindParam(':name', $_POST['name']);
	$stm->bindParam(':difficulty', $_POST['difficulty']);
	$stm->bindParam(':distance', $_POST['distance']);
	$stm->bindParam(':duration', $_POST['duration']);
	$stm->bindParam(':height_difference', $_POST['height_difference']);

	if($stm->execute()){
		echo "Ajout en bdd effectuée";
	}else{
		echo "L'ajout a échoué";
	}

	}
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Ajouter une randonnée</title>
	<link rel="stylesheet" href="css/basics.css" media="screen" title="no title" charset="utf-8">
</head>
<body>
	<a href="./read.php">Liste des données</a>
	<h1>Ajouter</h1>
	<form action="" method="post">
		<div>
			<label for="name">Name</label>
			<input type="text" name="name" value="">
		</div>

		<div>
			<label for="difficulty">Difficulté</label>
			<select name="difficulty">
				<option value="très facile">Très facile</option>
				<option value="facile">Facile</option>
				<option value="moyen">Moyen</option>
				<option value="difficile">Difficile</option>
				<option value="très difficile">Très difficile</option>
			</select>
		</div>

		<div>
			<label for="distance">Distance</label>
			<input type="text" name="distance" value="">
		</div>
		<div>
			<label for="duration">Durée</label>
			<input type="time" name="duration" value="">
		</div>
		<div>
			<label for="height_difference">Dénivelé</label>
			<input type="text" name="height_difference" value="">
		</div>
		<button type="submit" name="button">Envoyer</button>
	</form>
</body>
</html>
