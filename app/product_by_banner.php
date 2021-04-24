<?php

	include('connect/connect.php');
	$id_type = $_GET['id_type'];

	$limit = 3;
	$page = isset($_GET['page'])?$_GET['page']:1;
	settype($page, "int");
	$offset = ($page - 1) * $limit;
	
	$products = $mysqli->query("SELECT p.*, b.name AS nameType, GROUP_CONCAT(i.link) AS images FROM product p INNER JOIN banner_types b ON b.id = p.id_banner_type INNER JOIN images i ON i.id_product = p.id WHERE id_banner_type = $id_type group by p.id LIMIT $offset,$limit ");
	
	while ($row = $products->fetch_object()){
	    $assignees = explode(',', $row->images);
		$row->images = $assignees;
	    $product[] = $row;
	}

	echo json_encode($product);


?>