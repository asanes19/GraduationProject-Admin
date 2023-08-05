<?php if($_settings->chk_flashdata('success')): ?>
<script>
	alert_toast("<?php echo $_settings->flashdata('success') ?>",'success')
</script>
<?php endif;?>
<style>
	.model-thumbnail{
		width:3em;
		height:3em;
		object-fit:cover;
		object-position:center center;
	}
</style>
<div class="card card-outline rounded-0 card-navy">
	<div class="card-header">
		<h3 class="card-title">List of Bids</h3>

	</div>
	<div class="card-body">
        <div class="container-fluid">
			<table class="table table-hover table-striped table-bordered" id="list">
				<colgroup>
					<col width="10%">
					<col width="15%">
					<col width="10%">
					<col width="10%">
					<col width="10%">
				</colgroup>
				<thead>
					<tr>
						<th>#</th>
						<th>Car Id</th>
						<th>User Name</th>
						<th>Email</th>
						<th>Phone Number</th>
						<th>Car Name</th>
						<th>Highst Bid</th>
					</tr>
				</thead>
				<tbody>
					<?php 
					$i = 1;
						$qry = $conn->query("SELECT v.*, m.model, m.engine_type, m.transmission_type, b.name as `brand`, ct.name as `car_type`, Year, c.FirstName, c.LastName, c.Email, c.PhoneNumber, bds.hights_bid, bds.status
                        FROM `biddingcars` v 
                        INNER JOIN model_list m ON v.model_id = m.id 
                        INNER JOIN brand_list b ON m.brand_id = b.id 
                        INNER JOIN car_type_list ct ON m.car_type_id = ct.id 
                        INNER JOIN (SELECT car_id, MAX(hights_bid) AS max_bid FROM bids GROUP BY car_id) AS max_bids ON v.id = max_bids.car_id
                        INNER JOIN bids bds ON max_bids.car_id = bds.car_id AND max_bids.max_bid = bds.hights_bid
                        INNER JOIN clients c ON bds.user_id = c.id
                        ");
						while($row = $qry->fetch_assoc()):
					?>
						<tr>
							<td class="text-center"><?php echo $i++; ?></td>
							
							<td class=""><?= $row['id'] ?></td>
							<td class=""><?= $row['FirstName'] ?> <?= $row['LastName'] ?></td>
							<td class=""><?= $row['Email'] ?></td>
							<td class=""><?= $row['PhoneNumber'] ?></td>
							<td class="">
								<div style="line-height:1em">
									<div><b><?= $row['brand'] ?></b></div>
									<div><small class="text-muted"><?= $row['model'] ?></small></div>
								</div>
							</td>
							<td class=""><?= $row['hights_bid'] ?></td>



					<?php endwhile; ?>
				</tbody>
			</table>
		</div>
	</div>
</div>
