<?php
$getUser = $this->session->userdata('session_user');
$getGrup = $this->session->userdata('session_grup');
?>

<div class="card shadow mb-4">
  <div class="card-header py-3">
    <h6 class="m-0 font-weight-bold text-primary">Profiles User</h6></div>
    <div class="card-body"><div class="table-responsive">
      <table class="table table-bordered" id="dataTables" width="100%" cellspacing="0">
        <thead class="text-center">
          <tr><th>No</th>
            <th>Username</th>
            <th>Nama</th>
            <th>Grup</th>
            <th>Opsi Lanjutan</th></tr>
          </thead>
          
            <tbody class="text-center">
              <?php $no = 1;
              foreach($user as $baris){
                ?>
                <tr><td><?php echo $no++; ?></td>
                  <td><?php echo $baris->username; ?></td>
                  <td><?php echo $baris->nama; ?></td>
                  <td><?php echo $baris->grup; ?></td>
                  <td>
                  <a href="<?php echo site_url('Mahasiswa/edit/'.$baris->id); ?>"
                  class="btn btn-small text-info"><i class="fas da-edit"></i> Edit </a>
                  <a href="<?php echo site_url('Mahasiswa/hapus/'.$baris->id); ?>"
                  href="#!" class="btn btn-small text-danger"><i class="fas da-hapus"></i> Hapus </a>
                  </td></tr>
                <?php } ?>
              </tbody>
            </table>
          </div>
          <a href="<?php echo base_url('Mahasiswa/tambah')?>" class="btn btn-success btn-icon-split">
            <span class="text">Tambah Data</span>
          </a>
        </div></div>
