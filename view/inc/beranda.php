<?php
  $url = array(
    'http://10.20.30.240:706/bukutamu/api/tampil_kunjungan.php',
    'http://10.20.30.240:706/bukutamu/api/tampil_tamu.php',
  );
  $data = array();
  foreach ($url as $r) {
    $a = file_get_contents($r);
    $data[] = count(json_decode($a, true)['tamu']);
  }
?>
<style>
  .contentEuy{
    padding: 20px 10px;
    border: thin solid #ddd;
  }
  .contentEuy p{
    font-size: 12px;
  }
  .logoNa{
    display: block;
    font-size: 80px;
  }
</style>
<div class="row" style="margin-top: 40px; padding-left: 20px; padding-right: 20px;">
  <h5 class="f-g-book grey-text text-darken-2">Kunjungan Tamu hari ini</h5>
  <div class="col s12 m6 l3 center-align" style="padding-top: 20px;">
    <a href="?menu=tamu">
      <div class="contentEuy white grey-text text-darken-2">
        <i class="material-icons logoNa">people</i>
        <p class="f-g-book">
          Kunjungan Tamu Hari Ini : <?=$data[1]?>
        </p>
      </div>
    </a>
  </div>
  <div class="col s12 m6 l3 center-align" style="padding-top: 20px;">
    <a href="?menu=alumni">
      <div class="contentEuy white grey-text text-darken-2">
        <i class="material-icons logoNa">school</i>
        <p class="f-g-book">
          Kunjungan Alumni Hari Ini : 0
        </p>
      </div>
    </a>
  </div>
  <div class="col s12 m6 l3 center-align" style="padding-top: 20px;">
    <a href="?menu=kunjungan">
      <div class="contentEuy white grey-text text-darken-2">
        <i class="material-icons logoNa">person</i>
        <p class="f-g-book">
          Kunjungan Hari Ini : <?=$data[0]?>
        </p>
      </div>
    </a>
  </div>
  <div class="col s12 m6 l3 center-align" style="padding-top: 20px;">
    <a href="?menu=ortu">
      <div class="contentEuy white grey-text text-darken-2">
        <i class="material-icons logoNa">person_outline</i>
        <p class="f-g-book">
          Kunjungan Orang Tua Hari Ini : 0
        </p>
      </div>
    </a>
  </div>
</div>