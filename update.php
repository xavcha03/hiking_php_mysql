<?php
	require("./bdConnection.php");
	var_dump($_POST);
	//Récupération de l'id dans l'url
	if(isset($_GET['id'])){
		//Récupération des datas en bdd
		$query = "SELECT * FROM hiking WHERE id = :id";
		$stm = $db->prepare($query);
		$stm->bindParam(':id', $_GET["id"]);
		$stm->execute();
		$hiking = $stm->fetch();
	}else{
		header("Location: read.php");
	}
	
	if(!empty($_POST)){
		$query = "UPDATE hiking SET name=:name, difficulty=:difficulty,distance=:distance, duration=:duration, height_difference=:height_difference WHERE id=:id";
		$stm = $db->prepare($query);
		$stm->bindParam(':name', $_POST["name"]);
		$stm->bindParam(':difficulty', $_POST["difficulty"]);
		$stm->bindParam(':distance', $_POST["distance"]);
		$stm->bindParam(':duration', $_POST["duration"]);
		$stm->bindParam(':height_difference', $_POST["height_difference"]);
		$stm->bindParam(':id', $_GET["id"]);

		if($stm->execute()){
			echo "modification ok";
		}else{
			echo "modification échouée";
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
	<a href="read.php">Liste des données</a>
	<h1>Ajouter</h1>
	<form action="" method="post">
		<div>
			<label for="name">Name</label>
			<input type="text" name="name" value="<?=$hiking["name"]?>">
		</div>

		<div>
			<label for="difficulty">Difficulté</label>
			<select name="difficulty">
				<option value="très facile" <?=$hiking["difficulty"]=="très facile"?"selected":""?>>Très facile</option>
				<option value="facile" <?=$hiking["difficulty"]=="facile"?"selected":""?>>Facile</option>
				<option value="moyen" <?=$hiking["difficulty"]=="moyen"?"selected":""?>>Moyen</option>
				<option value="difficile" <?=$hiking["difficulty"]=="difficile"?"selected":""?>>Difficile</option>
				<option value="très difficile" <?=$hiking["difficulty"]=="très difficile"?"selected":""?>>Très difficile</option>
			</select>
		</div>
		
		<div>
			<label for="distance">Distance</label>
			<input type="text" name="distance" value="<?=$hiking["distance"]?>">
		</div>
		<div>
			<label for="duration">Durée</label>
			<input type="duration" name="duration" value="<?=$hiking["duration"]?>">
		</div>
		<div>
			<label for="height_difference">Dénivelé</label>
			<input type="text" name="height_difference" value="<?=$hiking["height_difference"]?>">
		</div>
		<button type="submit" name="button">Envoyer</button>
	</form>
</body>
</html>
