<?php
//koneksi ke database
$koneksi = mysqli_connect("localhost","root","","sasaknya");

//check koneksi
if (mysqli_connect_errno()){

    echo "Koneksi database gagal :" .mysqli_conncect_errno();
}

?>