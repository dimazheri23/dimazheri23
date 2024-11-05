<?php
include "atas.php";

$tgl = date('Y');
?>
      <!--sidebar end-->
      
      <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->
      <!--main content start-->
                  	  <h4 >INPUT DATA NILAI</h4>
                      <form class="" action="simpan_nilai.php" method="POST">
					  					  <div class="form-group">
                              <label class="">Pembuatan Tahun</label>
                              <div class="">
                                  <input name="tahun" type="text" class="form-control"  value="<?php echo"$tgl";?>"required>
                              </div>
                          </div>
                          <div class="form-group">
                              <label class="">Kode Nilai</label>
                              <div class="">
                                   <input name="t1" type="text" class="form-control"  required>
                              </div>
                          </div>
                                                        
                          <div class="form-group">
                              <label class="">NIK</label>
                              <div class="">
                        
                                  <input name="t2" type="text" class="form-control"  required>
                              </div>
                          </div>
           
						      <div class="form-group">
                              <label class="">Nilai Kinerja</label>
                              <div class="">
                                  <input name="t3" type="text" class="form-control" required>
                              </div>
                          </div>
						    <div class="form-group">
                              <label class="">Nilai Pendidikan</label>
                              <div class="">
                                  <input name="t4" type="text" class="form-control" required>                              </div>
                          </div>
						    <div class="form-group">
                              <label class="">Nilai Masa Kerja</label>
                              <div class="">
                                  <select name="t5" class="form-control" required>
								   <option>-</option>
								   <option value="> 15 Tahun"> > 15 Tahun</option>
								  <option value="11 - 15 Tahun">11 - 15 Tahun</option>
								  <option value="5 - 10 Tahun">5 - 10 Tahun</option>
								  </select>
                              </div>
                          </div>
						     
						     <input type="submit" class="btn btn-primary" value="Simpan"/>
							<hr>
							 
       <?php
	   
	   include "bawah.php";
	   ?>