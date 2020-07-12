<?php 
	include('header.php');
	include('navigation.php');
?>
<?php 
if(isset($_GET['view'])){
  $gallery = new Gallery;
  $photo_id = $_GET['photo_id'];
  
  $myrow = $gallery->getPhotosById($photo_id);
    // echo $row['title'];
  // var_dump($row);
foreach ($myrow as $row) {   ?>
<div class="container-fluid">
	<div class="card">
	<div class="card-header">
        <?php echo $row['title']; ?><br>
    </div>
    <div class="card-body">
        <img src="assets/images/<?php echo $row['image']; ?>"><br>
    </div>
    <div class="card-body">
        <?php echo $row['subheading']; ?><br>
    </div>
    <div class="card-footer">
        <?php echo $row['content']; ?><br>
    </div>
</div>

 <?php }
 }
  ?>



<?php include ('footer.php'); ?>