<body onLoad="javascript:print()"> 
<div class="panel panel-default">
<link href="assets/css/bootstrap.css" rel="stylesheet">
<h3 align="center">LAPORAN DATA GURU</h3>
<hr>
<table border="1" class="table table-striped table-advance table-hover">
<thead>
<tr>						
<thead>
<tr>
<td>NO</td>
<td>NIP</td>
<td>NAMA </td>
<td>JENIS KELAMIN</td>
<td>ALAMAT</td>
<td>NO TELEPON</td>

</tr>
</thead>
<?php
include "Config/koneksi.php";
$tampil = "SELECT * FROM guru";
$hasil = mysqli_query($konek, $tampil);
$no=0;
while ($row =mysqli_fetch_array($hasil)):
$no++;

?>

     <tr> <td><?php echo $no ?></td>
          <td><?php echo $row['nip'] ?></td>
          <td><?php echo $row['nama'] ?></td>
          <td><?php echo $row['jk'] ?></td>
          <td><?php echo $row['alamat'] ?></td>
          <td><?php echo $row['telpon'] ?></td>
       
       
		
         

      
     </tr>
<?php
endwhile;
?>
</body>
</table>
<?php
echo "<br><br><table align='right'>";
$tgl = date('d M Y');
echo "<tr><td>Padang, $tgl</td></tr>";
echo "<tr><td>Mengetahui,</td></tr>";
echo "<tr><td><em>&nbsp;</em></td></tr>";
echo "<tr><td><em>&nbsp;</em></td></tr>";
echo "<tr><td><em>&nbsp;</em></td></tr>";
echo "<tr><td>Pimpinan</td></tr>";


?>