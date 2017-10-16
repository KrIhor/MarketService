(function () {
    'use strict';
    angular.module('RegistrationFormApp', []);
})();
(function () {
    'use strict';
    angular
        .module('RegistrationFormApp')
        .controller('MyController', MyController);
        MyController.$inject = ['$http'];
         function MyController($http) {
        var self = this;
        self.model={};
      /*  self.testHttpGet = function () {
            $http({
                method: 'GET',
                url: 'http://localhost:8080/api/angular/'
            }).then(function successCallback(response) {
                console.log(response.data);
            }, function errorCallback(response) {
                console.log(response);
            });
        }
    */
        self.testHttpPost = function () {
            console.log(self.model);
            console.log("good");
            $http({
                method: 'POST',
                dataType: "json",//Хз чи тре якшо не тре, стри
                url: 'http://localhost:8080/registration',
                data: self.model
            }).then(function successCallback(response) {
                console.log(response.data);
            }, function errorCallback(response) {
                console.log(response);
            });
        }
        
    }
})();
