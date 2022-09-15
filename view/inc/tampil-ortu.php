<?php
  $url = 'http://10.20.30.240:706/bukutamu/api/tampil_ortu.php';
  $a = file_get_contents($url);
  $data = json_decode($a, true);
  $no = 1;
  if (count($data['tamu']) > 0) {
    foreach ($data['tamu'] as $r) {
?>
<tr>
  <td class="center-align"><?=$no?></td>
  <td><?=$r['nama']?></td>
  <td><?=$r['ortu_dari']?></td>
  <td><?=$r['keperluan']?></td>
  <td><?=$r['bertemu_dengan']?></td>
  <td><?=$r['hp']?></td>
  <td><img src="http://10.20.30.240:706/bukutamu/foto/orang/<?=$r['foto']?>"></td>
  <td><img src="http://10.20.30.240:706/bukutamu/foto/ttd/<?=$r['ttd']?>" style="width: 200px;"></td>
  <td><?=str_replace(' ', '&nbsp;', date('d M Y', strtotime($r['waktu'])))?></td>
</tr>
<?php $no++;}}else{echo "<tr> <td colspan='9'>Tidak ada data</td> </tr>";} ?>