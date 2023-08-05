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
		<h3 class="card-title">List of Offers</h3>
	</div>
	<div class="card-body">
        <div class="container-fluid">
			<table class="table table-hover table-striped table-bordered" id="list">
				<colgroup>
					<col width="5%">
					<col width="10%">
					<col width="10%">
					<col width="5%">
					<col width="10%">
					<col width="10%">
					<col width="15%">
					<col width="15%">
					<col width="15%">
					<col width="5%">
				</colgroup>
				<thead>
					<tr>
						<th>#</th>
						<th>Name/Phone</th>
						<th>Company/Model</th>
						<th>Year</th>
						<th>Mileage</th>
						<th>Offering Price</th>
						<th>Options</th>
						<th>Specifications</th>
						<th>Description</th>
						<th>Delete</th>
					</tr>
				</thead>
				<tbody>
					<?php 
					$i = 1;
						$qry = $conn->query("SELECT * from  requstcars");
						while($row = $qry->fetch_assoc()):
					?>
						<tr>
							<td class="text-center"><?php echo $i++; ?></td>

							<td class="">
								<div style="line-height:1em">
									<div><b><?= $row['Name'] ?></b></div>
									<div><small class="text-muted"><?= $row['Phone'] ?></small></div>
								</div>
							</td>			

							<td class="">
								<div style="line-height:1em">
									<div><b><?= $row['Company'] ?></b></div>
									<div><small class="text-muted"><?= $row['Model'] ?></small></div>
								</div>
							</td>

							<td class=""><?= $row['Year'] ?></td>

							<td class=""><?= $row['Mileage'] ?></td>

							<td class=""><?= $row['OfferingPrice'] ?></td>

							<td class=""><?= $row['Options'] ?></td>

							<td class=""><?= $row['Specifications'] ?></td>

							<td class=""><?= $row['Description'] ?></td>

							<td align="center">
				                    <a class="dropdown-item delete_data" href="javascript:void(0)" data-id="<?php echo $row['ID'] ?>"><span class="fa fa-trash text-danger"></span> Delete</a>
				                  
							</td>
						</tr>
					<?php endwhile; ?>
				</tbody>
			</table>
		</div>
	</div>
</div>
<script>
	$(document).ready(function(){
		$('.delete_data').click(function(){
			_conf("Are you sure to delete this offer permanently?","delete_requstedcars",[$(this).attr('data-id')])
		})
		$('.table').dataTable({
			columnDefs: [
					{ orderable: false, targets: [5] }
			],
			order:[0,'asc']
		});
		$('.dataTable td,.dataTable th').addClass('py-1 px-2 align-middle')
	})
	function delete_requstedcars($ID){
		start_loader();
		$.ajax({
			url:_base_url_+"classes/Master.php?f=delete_requstedcars",
			method:"POST",
			data:{ID: $ID},
			dataType:"json",
			error:err=>{
				console.log(err)
				alert_toast("An error occured.",'error');
				end_loader();
			},
			success:function(resp){
				if(typeof resp== 'object' && resp.status == 'success'){
					location.reload();
				}else{
					alert_toast("An error occured.",'error');
					end_loader();
				}
			}
		})
	}
</script>