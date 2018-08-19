<div class="row">
	<div class="col-md-5">

	<div class="panel-body">
			<form id="form1" name="form1" method="post">
				<div class="row">
					<div class="form-group col-md-12">
						<label class="col-md-3 control-lable" for="taskname">Task</label>
						<div class="col-md-7 col-md-offset-1">
							<input type="text" id="taskname"
								class="taskname form-control input-sm"
								placeholder="Enter your Task" />
						</div>
					</div>
				</div>
				<div class="row">
					<div class="form-group col-md-12">
						<label class="col-md-4 control-lable" for="parenttaskname">Parent
							Task</label>
						<div class="col-md-7">
							<input type="text" id="parenttaskname"
								class="parenttaskname form-control input-sm"
								placeholder="Enter your Parent Task" />
						</div>
					</div>
				</div>
				<div class="row">
					<div class="form-group col-md-12">
						<label class="col-md-4 control-lable" for="startDate">Start
							Date</label>
						<div class="col-md-7">
							<input type="text" id="startDate"
								class="startDate form-control input-sm"
								placeholder="Enter Start Date" />
						</div>
					</div>
				</div>
				<div class="row">
					<div class="form-group col-md-12">
						<label class="col-md-4 control-lable" for="endDate">End
							Date</label>
						<div class="col-md-7">
							<input type="text" id="endDate"
								class="endDate form-control input-sm"
								placeholder="Enter End Date" />
						</div>
					</div>
				</div>
				<div class="row">
					<div class="form-group col-md-12">
						<label class="col-md-4 control-lable" for="priority">Priority</label>
						<div class="col-md-7">
							<input type="range" id="priority" min="0" max="30"
								class="priority form-control input-sm"
								placeholder="Enter Priority" />
						</div>
					</div>
				</div>
				<div class="row">
					<div class="form-actions floatRight">
						<input type="submit" value="{{!ctrl.user.id ? 'Add' : 'Update'}}"
							class="btn btn-primary btn-sm"
							ng-disabled="myForm.$invalid || myForm.$pristine">
						<button type="button" ng-click="ctrl.reset()"
							class="btn btn-warning btn-sm" ng-disabled="myForm.$pristine">Reset
							Form</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>