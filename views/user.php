<?php include('../partials/header.php') ?>
<?php include('../partials/nav.php') ?>
	<div class="container">
		<div class="row">

			<div class="col-lg-8">
				<div class="create_user_btn my-2">
					<div class="row">
						<div class="col-lg-12 text-center">
							<button type="button" class="btn btn-primary form-control btn_add" data-toggle="modal" data-target="#add_modal">
								<strong>Add User</strong>	
							</button>
						</div>
					</div>
				</div>

				<div class="employee_card">
					<div class="row">
						<?php $crud->getEmployeeCard(); ?>
					</div>
				</div>
			</div>

			<div class="col-lg-4">
				
					<nav class="point_history card nav sticky-top my-2">
						<div class="card mb-2">
							<div class="card-header ch_custom text-center"><strong>Points History</strong></div>
							<div class="for_scroll">
								<?php $crud->getPointsHistory(); ?>
							</div>
						</div>
						<br>
						<div class="card">
							<div class="card-header ch_custom text-center"><strong>Summary Table</strong></div>
							
							<div class="card-body summary_table pl-4" style="padding: 10px">
								<div class="row justify-content">
									<div class="col-lg-12 summary">
										<strong>Show Users table</strong>
										<em class="users_view"  style="cursor: pointer; position:relative; left: 48%;" data-toggle="tooltip" title="Tap to view Users table"><img data-toggle="modal" data-target="#view_users_modal"  src="../assets/img/icons/eye1.png" height="23" width="23" alt=""></em>
									</div>

								</div>
							</div>
							<hr style="margin:0; padding:0;">


							<div class="card-body summary_table pl-4" style="padding: 10px">
								<div class="row justify-content">
									<div class="col-lg-12 summary">
										<strong>Show Point history table</strong>
										<em class="history_view"  style="cursor: pointer; position:relative; left: 32%;" data-toggle="tooltip" title="Tap to view Points history table"><img data-toggle="modal" data-target="#view_history_modal"  src="../assets/img/icons/eye1.png" height="23" width="23" alt=""></em>
									</div>
								</div>
							</div>


						</div>

					</nav>

			</div>

			<div class="col-lg-12">
				<?php  
					$crud->getModal();
				?>
				<!-- view users table -->
					<div class="modal fade" id="view_users_modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
						<div class="modal-dialog modal-lg" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title" id="exampleModalLabel" style="color: #b29758">Users Table</h5>
									<button type="button" class="close" data-dismiss="modal" aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>
								<div class="modal-body">
									<div class="table_employee">
										<table class="table table-striped table-bordered">
											<thead>
												<tr>
													<th>#</th>
													<th>First name</th>
													<th>Last name</th>
													<th>Gender</th>
													<th class="text-center">Reward Points</th>
												</tr>
											</thead>
											<?php  
												$crud->getTableUsers();
											?>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>

					<!-- view history table -->
					<div class="modal fade" id="view_history_modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
						<div class="modal-dialog modal-lg" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title" id="exampleModalLabel" style="color: #b29758">Points History Table</h5>
									<button type="button" class="close" data-dismiss="modal" aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>
								<div class="modal-body">
									<div class="table_employee">
										<table class="table table-striped table-bordered">
											<thead>
												<tr>
													<th>#</th>
													<th>Username</th>
													<th>User_id</th>
													<th>Added Points</th>
													<th>Deducted Points</th>
													<th>Remarks</th>
													<th>Date Created</th>
												</tr>
											</thead>
											<?php  
												$crud->getTableHistory();
											?>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
			</div>
			
		
		</div>

		
	</div>

<?php include('../partials/footer.php') ?>



