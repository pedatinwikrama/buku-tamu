<?php
$hostname = '127.0.0.1';
$username = 'root';
$password = 'RPLbaru2018';
$database = 'db_bukutamu_wk';

$con=mysqli_connect($hostname, $username, $password, $database);

// get all data
$all = mysqli_query($con,"select * from kunjungan");
$total = mysqli_num_rows($all);
// get data for displaying in screen

$date = date("Y-m-d");

$yesterday = date('Y-m-d',strtotime("-1 days"));

$data = null;

$dataToday = mysqli_query($con,"select * from kunjungan where waktu like '$date%' order by waktu DESC limit 45");
if (mysqli_num_rows($dataToday) < 4) {
    $dataYesterday = mysqli_query($con,"select * from kunjungan where waktu like '$yesterday%' order by waktu DESC limit 45");
    if (mysqli_num_rows($dataYesterday) < 4) {
        $dataNew = mysqli_query($con,"select * from kunjungan order by waktu DESC limit 45");
        $data = $dataNew;
    } else {
        $data = $dataYesterday;
    }
} else {
    $data = $dataToday;
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

  <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js" integrity="sha512-bPs7Ae6pVvhOSiIcyUClR7/q2OAsRiovw4vAkX+zJbw3ShAeeqezq50RIIcIURq7Oa20rW2n2q+fyXBNcU9lrw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" integrity="sha512-tS3S5qG0BlhnQROyJXvNjeEM4UpMXHrQfTGmbQ1gKmelCxlSEBUaxhRBj/EFTzpbP4RVSrpEikbmdJobCvhE3g==" crossorigin="anonymous" referrerpolicy="no-referrer" />

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />

  <link rel="stylesheet" href="slider-main.css">
  <title>Selamat Datang di SMK Wikrama Bogor</title>
</head>
<body>
  <div class="wrapper">
    <div class="img-logo">
      <img src="images/logo-wk.png">
    </div>
    <h1>Selamat Datang di SMK Wikrama Bogor</h1>
    <div class="carousel owl-carousel">
        <?php 
            while($r = mysqli_fetch_array($data)){
        ?>
        <div class="card">
         <div class="content">
           <div class="img">
               <?php if($r['foto'] != null) {?>
                    <img src="foto/orang/<?php echo $r['foto'] ?>" alt="">
                <?php } else { ?>
                    <img src="images/user.png" alt="">
                <?php } ?>
           </div>
           <div class="details">
             <div class="name"><?php echo $r['nama'] ?></div>
             <div class="job"><?php echo $r['instansi'] ?></div>
           </div>
         </div>
        </div>
        <?php } ?>
    </div>
  </div>

  <script>
    $(".carousel").owlCarousel({
      loop: true,
      margin: 25,
      autoplay: true,
      autoplayTimeout: 5000,
      autoplayHoverPause: true,
      nav: true,
      navText: ["<i class='fas fa-chevron-left'></i>", "<i class='fas fa-chevron-right'></i>"],
      responsive: {
        0: {
          items: 1,
        },
        600: {
          items: 2,
        },
        1000: {
          items: 3,
        },
      }
    });

    $(document).ready(function(){
        localStorage.setItem("totalData", <?php echo $total ?>);

        setInterval(function () {
            <?php 
                $refresh = mysqli_query($con,"select * from kunjungan");
                $totalNew = mysqli_num_rows($refresh);   
                
                if($totalNew !== $total) {
            ?>
                localStorage.setItem("totalData", <?php echo $totalNew ?>);
                location.reload();
            <?php } ?>
        }, 60000);
    });
  </script>

</body>
</html>