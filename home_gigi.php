<?php
$getPoli_g = $this->session->userdata('session_Poli_g');
?>

<div class="card shadow mb-4">
  <div class="card-header py-3">
    <h6 class="m-0 font-weight-bold text-primary">DATA PASIEN POLI GIGI</h6></div>
    <div class="card-body"><div class="table-responsive">
      <table class="table table-bordered" id="dataTables" width="100%" cellspacing="0">
        <thead class="text-center">
          <tr><th>No</th>
            <th>NIK</th>
            <th>Tanggal</th>
            <th>Nama Pasien</th>
            <th>Jenis Poli</th>
            <th>Opsi Lanjutan</th></tr>
          </thead>
          
            <tbody class="text-center">
                  <td><? $no++ ?></td>
    <td><? ['NIK']?></td>
    <td><? $row['Tanggal']?></td>
    <td><? $row['Nama_Pasien']?></td>
    <td><? $row['Jenis_Poli']?></td>
                  </tr>
                <?php  ?>
              </tbody>
            </table>
          </div>
          <a href="<?php echo base_url('Poli_g/tambah')?>" class="btn btn-success btn-icon-split">
            <span class="text">Tambah Data</span>
          </a>
        </div></div>
