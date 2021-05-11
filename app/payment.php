<?php
//cart
use \Firebase\JWT\JWT;

require __DIR__ . '/vendor/autoload.php';
include('function.php');
include('connect/connect.php');
$json = file_get_contents('php://input');
$obj = json_decode($json, true);
$key = "example_key";

$arrayDetail = $obj['arrayDetail'];
$token = $obj['token'];

try {
	$decoded = JWT::decode($token, $key, array('HS256'));
	if ($decoded->expire < time()) {
		echo 'HET_HAN';
	} else {

		$order_id = $arrayDetail["order_id"];
		$bill_id = $arrayDetail["bill_id"];
		$phonenumber = $arrayDetail["phonenumber"];
		$amount = $arrayDetail["amount"];

		$sql = "INSERT INTO `payment`(`order_id`, `bill_id`, `phonenumber`, amount) VALUES ('$order_id', '$bill_id', '$phonenumber', $amount)";
		$mysqli->query($sql);

		$sqlUpdate = "UPDATE `bill` SET `status` = 1 WHERE id = $bill_id";

		$mysqli->query($sqlUpdate);

		$response = array("status"=>'THANH_TOAN_THANH_CONG');
		$response = json_encode($response);
		echo $response;
	}
} catch (Exception $e) {
	echo 'TOKEN_KHONG_HOP_LE';
}
