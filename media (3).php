<?php
$t1=$_GET['t1'];
$t2=$_GET['t2'];
$t3=$_GET['t3'];
$t4=$_GET['t4'];
$t5=$_GET['t5'];

include "./Config/koneksi.php";
$edit="update personil set Nama='$t2',
Jk='$t3',
Alamat='$t4',
Telpon='$t5' where Kd_personil='$t1'";
$hasil=mysqli_query($konek,$edit);

if($hasil){
	echo "<script type='text/javascript'>
	alert('Data Berhasil Di Edit') </script>";
	echo"<script>location.href='media.php?page=karyawan'</script>";
}else{
	echo "<script type='text/javascript'/>
	alert('Data Gagal di Edit') </script>";
	echo"<script>location.href='media.php?page=karyawan'</script>";
}




?>