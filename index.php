<?php 
	include('header.php');
	include('navigation.php');
?>
<div id="demo" class="carousel slide" data-ride="carousel">

  <!-- Indicators -->
  <!-- <ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
    <li data-target="#demo" data-slide-to="2"></li>
  </ul> -->

  <!-- The slideshow -->
  <!-- <div class="carousel-inner" >
    <div class="carousel-item active">
      <img src="assets/images/mustang.jpeg" alt="Mustang" style="width: 1500px; height: 350px;">
    </div>
    <div class="carousel-item">
      <img src="assets/images/kathmandu.jpeg" alt="Kathmandu" style="width: 1500px; height: 350px;">
    </div>
    <div class="carousel-item">
      <img src="assets/images/rara.jpeg" alt="Rara Lake" style="width: 1500px; height: 350px;">
    </div>
  </div>
 -->
  <!-- Left and right controls -->
<!--   <a class="carousel-control-prev" href="#demo" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>
 -->
</div>
<div class="container-fluid">
	<div class="row">
    <?php  
      $gallery = new Gallery;
      $myrow = $gallery->getActivePhotos();
      foreach ($myrow as $row) { 
    ?>
		<div class="col-sm-3">
      <div class="card">
        <div class="card-header text-sm-center">
            <?php echo $row['title']; ?>
        </div>
        <div class="card-body text-sm-center">
          <img src="assets/images/<?php echo $row['image']; ?>" style="width:100%; height: 100%;">
          <?php echo $row['subheading']; ?>
        </div>
        <div class="card-footer text-sm-center">
          <a href="viewphoto.php?view=1&photo_id=<?php echo $row['photo_id']; ?>" class="btn btn-info">View</a>
        </div>
      </div>
    </div>
    <?php } ?>
	</div>
</div>
<?php include('footer.php'); ?>