(function () {
    'use strict';
    angular.module('SignInApp', []);
})();
(function () {
    'use strict';
    angular
        .module('SignInApp')
        .controller('SignInController', SignInController);
        SignInController.$inject = ['$http'];
         function SignInController($http) {
        var self = this;
        self.model={};

        self.testHttpPost = function () {
            console.log(self.model);
            console.log("good");
            $http({
                method: 'POST',
                dataType: "json",//Хз чи тре якшо не тре, стри
                url: 'http://localhost:8080/api/angular/',//встав свій парсер
                data: self.model
            }).then(function successCallback(response) {
                console.log(response.data);
            }, function errorCallback(response) {
                console.log(response);
            });
        }
        
    }
})();
