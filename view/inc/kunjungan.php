<?php
  if (isset($_POST['pilih'])) {
    $tgl = $_POST['tanggal'];
    $hasil_tgl = date('Y-m-d', strtotime($tgl));
    $ajax = "<script>
      $(document).ready(function() {
        $('#tanggal').pickadate();
        $('#tamu').load('inc/tampil-kunjungan.php?tgl1=$hasil_tgl');
        setInterval(function(){
          $('#tamu').load('inc/tampil-kunjungan.php?tgl1=$hasil_tgl');
        }, 5000);
      });
    </script>";
  }else{
    $ajax = "<script>
      $(document).ready(function() {
        $('#tanggal').pickadate();
        $('#tamu').load('inc/tampil-kunjungan.php');
        setInterval(function(){
          $('#tamu').load('inc/tampil-kunjungan.php');
        }, 5000);
      });
    </script>";
  }
?>
<div class="row" style="margin-top: 20px">
  <div class="col s12 white" style="overflow: auto;">
    <h5 class="grey-text text-darken-2 f-g-book">Kunjungan Hari Ini</h5>
    <style>
      table.bordered th,
      table.bordered td{
        font-size: 13px!important;
        border: thin solid #ddd;
      }
      table.bordered th,
      table.bordered td:first-child{
        text-align: center;
      }
    </style>
    <form method="post">
      <div class="col s12 m6 l3 input-field">
        <label for="tanggal">Pilih Tanggal</label>
        <input type="text" name="tanggal" id="tanggal" value="<?php if(isset($_POST['tanggal'])){echo $_POST['tanggal'];} ?>">
      </div>
      <div class="col s12 m6 l3">
        <button name="pilih" class="btn blue lighten-2" style="margin-top: 20px;">Pilih</button>
      </div>
    </form>
    <table class="bordered">
      <thead>
        <tr>
          <th>No</th>
          <th>Nama</th>
          <th>Instansi</th>
          <th>Email</th>
          <th>pesan</th>
          <th>Kesan</th>
          <th>Foto</th>
          <th>Tanda&nbsp;Tangan</th>
          <th>Waktu</th>
        </tr>
      </thead>
      <tbody id="tamu"></tbody>
    </table>
  </div>
</div>