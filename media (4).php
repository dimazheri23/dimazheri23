<?php
include "Config/koneksi.php";

$t1 = $_POST['t1'];
$t2 = $_POST['t2'];
$t3 = $_POST['t3'];
$t4   = $_POST['t4'];
$t5  = $_POST['t5'];
$t6 = $_POST['t6'];
$t7 = $_POST['t7'];
$t8 = $_POST['t8'];
$t9   = $_POST['t9'];
$t10  = $_POST['t10'];
$t11  = $_POST['t11'];
$t12  = $_POST['t12'];

$input ="INSERT INTO guru VALUES('$t1','$t2','$t3','$t4','$t5','$t6','$t7','$t8','$t9','$t10','$t11','$t12')";
$input1 ="INSERT INTO admin VALUES('','$t2','$t6','$t7','guru','$t1','$t7')";
$hasil = mysqli_query($konek,$input);
$hasil1 = mysqli_query($konek,$input1);
if($hasil){
echo "<script type='text/javascript'>
      alert('Data Berhasil Disimpan...!!!');
      </script>";
	  
	   echo "<script>location.href='index.php?page=login'</script>";
}
else{
echo "<script type='text/javascript'>
      alert('Data Gaga Disimpan
	  ...!!!');
      </script>";
 echo "<script>location.href='index.php?page=registrasi'</script>";
}
?>