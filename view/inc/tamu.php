<?php
  $ajax = "<script>
  $(document).ready(function() {
    $('#tamu').load('inc/tampil-tamu.php');
    setInterval(function(){
      $('#tamu').load('inc/tampil-tamu.php');
    }, 5000);
  });
</script>";
?>
<div class="row" style="margin-top: 20px">
  <div class="col s12 white" style="overflow: auto;">
    <h5 class="grey-text text-darken-2 f-g-book">Tamu Hari Ini</h5>
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
    <table class="bordered">
      <thead>
        <tr>
          <th>No</th>
          <th>Nama</th>
          <th>Instansi</th>
          <th>Keperluan</th>
          <th>Foto</th>
          <th>Tanda&nbsp;Tangan</th>
          <th>Waktu</th>
        </tr>
      </thead>
      <tbody id="tamu"></tbody>
    </table>
  </div>
</div>