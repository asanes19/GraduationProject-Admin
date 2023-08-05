<?php
$conn = mysqli_connect('localhost', 'root', '', 'adms_db');

if(isset($_POST['submit'])){
    $imagecount = count($_FILES['image']['name']);
    $name= $_POST['name'][0];
    for($i=0;$i<$imagecount;$i++){
        $image_name= $_FILES['image']['name'][$i];
        $tmp_name= $_FILES['image']['tmp_name'][$i];
        $folder= "CarPics/img1/" .$image_name;
        if(move_uploaded_file($tmp_name, $folder)){
            $sql= "INSERT INTO `images` (`id`,`car_id`,`image`) VALUES ('', '$name', '$folder')";
            $result = mysqli_query($conn, $sql);
            if($result){
                echo "data inserted";
            }else{
                echo "error";
            }
        }
    }
}
?>
<style>
	legend.legend-sm {
		font-size: 1.4em;
	}
	#cimg{
		max-width: 100%;
		max-height: 20em;
		object-fit:scale-down;
		object-position:center center;
	}
</style>
<div class="content py-5 px-3 bg-gradient-navy">
	<h4 class="font-wight-bolder"><?= isset($id) ? "Update Model Details" : "New Pics Entry" ?></h4>
</div>
<div class="row mt-n4 align-items-center justify-content-center flex-column">
	<div class="col-lg-10 col-md-11 col-sm-12 col-xs-12">
		<div class="card rounded-0 shadow">
			<div class="card-body">
				<div class="container-fluid">
				<form class="" action="" method="post" autocomplete="off" enctype="multipart/form-data">
      <label for="name">ID : </label>
      <input type="text" name="name[]" id = "name" required value=""> <br>
      <label for="image">Image : </label>
      <input type="file" name="image[]" multiple id = "image" accept=".jpg, .jpeg, .png" value=""> <br> <br>
      <button type = "submit" name = "submit">Submit</button>
    </form>
    <br>
<?php


			


?>
				</div>
			</div>
		</div>
	</div>
</div>
