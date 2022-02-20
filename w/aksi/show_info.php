<?php
session_start();
include '../inc/koneksi.php';
// var_dump($_POST);
// var_dump($_FILES);
//  die;

$info = [];

$id = $_GET['id'];
$ketQuery = "SELECT * FROM `tabel_info` WHERE `id_info` = $id";
$executeSat = mysqli_query($koneksi, $ketQuery);
$tabel_info = mysqli_fetch_array($executeSat);

$ketQuery = "SELECT gambar FROM `tabel_info_gambar` WHERE `id_info` = $id";
$executeSat = mysqli_query($koneksi, $ketQuery);
$gambar = mysqli_fetch_array($executeSat);


$info['info'] = $tabel_info;
$info['gambar'] = $gambar;
// $varian = $s['varian'];
// $varians = explode(",", $varian)

echo json_encode($info);
