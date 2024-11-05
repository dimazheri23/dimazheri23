<?php
include "Config/koneksi.php";

$t1 = $_POST['t1'];
$t2 = $_POST['t2'];
$t3 = $_POST['t3'];
$t4   = $_POST['t4'];
$t5  = $_POST['t5'];

$input ="INSERT INTO nilai VALUES('$t1','$t2','$t3','$t4','$t5')";
$hasil = mysqli_query($konek,$input);
if($hasil){
echo "<script type='text/javascript'>
      alert('Data Berhasil Disimpan...!!!');
      </script>";
	  
	   echo "<script>location.href='media.php?page=nilai'</script>";
}
else{
echo "<script type='text/javascript'>
      alert('Data Gaga Disimpan
	  ...!!!');
      </script>";
 echo "<script>location.href='media.php?page=nilai'</script>";
}
?>