var app = angular.module('crudApp',['ui.router','ngStorage']);

app.constant('urls', {
    BASE: 'http://localhost:3333/TaskManagerApp',
    USER_SERVICE_API : 'http://localhost:3333/TaskManagerApp/api/task/'
});

app.config(['$stateProvider', '$urlRouterProvider',
    function($stateProvider, $urlRouterProvider) {

        $stateProvider
            .state('home', {
                url: '/',
                templateUrl: 'partials/addTask',
                controller:'TaskController',
                controllerAs:'ctrl',
                resolve: {
                    tasks: function ($q, TaskService) {
                        console.log('Load all tasks');
                        var deferred = $q.defer();
                        TaskService.loadAllTasks().then(deferred.resolve, deferred.resolve);
                        return deferred.promise;
                    }
                }
            });
        $urlRouterProvider.otherwise('/');
    }]);

