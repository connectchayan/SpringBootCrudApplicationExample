<!DOCTYPE html>

<html lang="en" ng-app="crudApp">
    <head>
        <title>${title}</title>
        <link href="css/bootstrap.css" rel="stylesheet"/>
        <link href="css/app.css" rel="stylesheet"/>
    
    <div class="row">
    <h1 class="col-md-7">TASK MANAGER</h1>
  	</div>
    <div class="row">
    <div class="col-md-2"><h3>Add Task</h3></div>
    <div class="col-md-2"><h3 ><a href="#">View Task</a></h3></div> 
  </div>
        
    </head>
    <body>

        <div ui-view></div>
        <script src="js/lib/angular.min.js" ></script>
        <script src="js/lib/angular-ui-router.min.js" ></script>
        <script src="js/lib/localforage.min.js" ></script>
        <script src="js/lib/ngStorage.min.js"></script>
        <script src="js/app/app.js"></script>
        <script src="js/app/TaskController.js"></script>
        <script src="js/app/TaskService.js"></script>
        
        
        
        
   
        
        
    </body>
</html>