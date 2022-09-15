<?php
  $url = array(
    'kunjungan'  => 'http://10.20.30.240:706/bukutamu/api/tampil_kunjungan.php',
    'tamu'       => 'http://10.20.30.240:706/bukutamu/api/tampil_tamu.php',
    'ortu'       => 'http://10.20.30.240:706/bukutamu/api/tampil_ortu.php',
    'alumni'     => 'http://10.20.30.240:706/bukutamu/api/tampil_alumni.php',
    'perusahaan' => 'http://10.20.30.240:706/bukutamu/api/tampil_perusahaan.php',
  );
  $data = array();
  foreach ($url as $k => $r) {
    $a     = file_get_contents($r);
    $array = json_decode($a, true)['tamu'];
    // array_push($array, [
    //   'tipe' => $k
    // ]);
    $data[] = $array;
  }

  // menggabungkan semua data
  $data1 = array();
  for($i = 0; $i < count($data); $i++){
    foreach ($data[$i] as $r) {
      array_push($data1, $r);
    }
  }

  // akan di sort berdasarkan waktu na
  $tanggalEuy = array();
  foreach($data1 as $r){
    $tanggalEuy[] = $r['waktu'];
  }
  array_multisort($tanggalEuy, SORT_DESC, $data1);
?>
<div class="row">
<?php
  foreach ($data1 as $r) {
?>
  <div class="col s12 m6 l3">
    <div class="content pake-border z-depth-1 f-g-book grey-text text-darken-2">
      <div class="image">
        <img src="../../bukutamu/foto/orang/<?=$r['foto']?>">
      </div>
      <table class="table-cuy">
        <?php
          foreach ($r as $key => $value) {
            if ($key != 'foto' and $key != 'ttd' and $key != 'id') {
              if (strlen($value) > 20) {
                $a = substr($value, 0, 17).'...';
              }else{
                $a = $value;
              }

              if ($key == 'waktu') {
                $a = date('M d, Y', strtotime($value));
              }
              if ($key == 'nama') {
                $a = '<span style="text-transform: capitalize;">'.$value.'</span>';
              }
        ?>
        <tr>
          <td style="text-transform: capitalize;"><?=$key?></td>
          <td>:</td>
          <td><?=$a?></td>
        </tr>
        <?php }} ?>
      </table>
    </div>
  </div>
<?php } ?>
</div>