<jsp:include page="../header.jsp"></jsp:include>

<div class="page-header">
	<h3>Register here, vehicles.</h3>
</div>
<div class="row">
	<form action="${linkTo[ServiceController].newService }" method="post"
		role="form" class="form-horizontal">
		<div class="col-md-8 col-lg-8 well">

			<!-- form vehicle -->
			<div class="form-group" id="vehicle_first">
				<div class="col-lg-6 col-md-6 ">
					<label for="inputuserName" class="col-sm-0 control-label">Search
						for a car by LicensePlate</label> <input type="text"
						name="vehicle.licensePlate" placeholder="licencePlate." required
						class="form-control" id="licensePlate" maxlength="7" />
				</div>
			</div>
			<div class="form-group" id="vehicle_last">
				<div class="col-md-4">
					<label for="inputuserName" class="col-sm-2 control-label">Model</label>
					<input type="text" name="vehicle.model" placeholder="model"
						id="model" required
						class="form-control" />
				</div>
				<div class="col-md-4">
					<label for="inputuserName" class="col-sm-2 control-label">Mark</label>
					<input type="text" name="vehicle.mark"
						 id="mark" placeholder="mark"
						required class="form-control" />
				</div>
				<div class="col-md-4">
					<label for="inputuserName" class="col-sm-2 control-label">Color</label>
					<input type="text" name="vehicle.color"
						 id="color" placeholder="color"
						required class="form-control" />
				</div>
				<input type="hidden" id="vehicle_id" value="NULL">
			</div>
			<!-- end vehicle -->

			<div class="form-group">
				<div class="col-sm-offset-6 col-sm-6 ">
					<input type="submit" value="push"
						class="btn btn-success pull-right">
				</div>
			</div>

		</div>

	</form>
</div>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/assets/js/searchVehicle.js"></script>
<jsp:include page="../footer.jsp"></jsp:include>