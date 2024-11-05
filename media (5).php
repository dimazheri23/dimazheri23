<?php
include "Config/koneksi.php";

$t1 = $_POST['id'];
$t2 = $_POST['jm'];
$t3 = $_POST['ket'];


$input ="INSERT INTO hasil VALUES('','$t1','$t2','$t3')";
$hasil = mysqli_query($konek,$input);
if($hasil){
echo "<script type='text/javascript'>
      alert('Data Berhasil Disimpan...!!!');
      </script>";
	  
	   echo "<script>location.href='input_proses.php'</script>";
}
else{
echo "<script type='text/javascript'>
      alert('Data Gagal Disimpan
	  ...!!!');
      </script>";
 echo "<script>location.href='input_proses.php'</script>";
}
?>