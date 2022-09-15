<?php
  $url = 'http://10.20.30.240:706/bukutamu/api/tampil_alumni.php';
  $a = file_get_contents($url);
  $data = json_decode($a, true);
  $no = 1;
  if (count($data['tamu']) > 0) {
    foreach ($data['tamu'] as $r) {
?>
<tr>
  <td class="center-align"><?=$no?></td>
  <td><?=$r['nama']?></td>
  <td><?=$r['tahun_lulus']?></td>
  <td><?=$r['jurusan']?></td>
  <td><?=$r['hp']?></td>
  <td><?=$r['email']?></td>
  <td><?=$r['keperluan']?></td>
  <td><img src="http://10.20.30.240:706/bukutamu/foto/orang/<?=$r['foto']?>"></td>
  <td><img src="http://10.20.30.240:706/bukutamu/foto/ttd/<?=$r['ttd']?>" style="width: 200px;"></td>
  <td><?=str_replace(' ', '&nbsp;', date('d M Y', strtotime($r['waktu'])))?></td>
</tr>
<?php $no++;}}else{echo "<tr> <td colspan='9'>Tidak ada data</td> </tr>";} ?>