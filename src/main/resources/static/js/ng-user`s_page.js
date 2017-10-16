(function () {
    'use strict';
    angular.module('UserPage', []);
})();
(function () {
    'use strict';
    angular
        .module('UserPage')
        .controller('UserPageController', UserPageController);
    UserPageController.$inject = ['$http'];
    function UserPageController($http) {
        var self = this;
        self.testHttpGet = function () {
            $http({
                method: 'GET',
                url: 'http://localhost:8080/profile'
            }).then(function successCallback(response) {
                var data = response.data;

                self.userData = data.userData;
                self.shops = data.shops;
                self.userData.fullName = data.userData.firstName + " " + data.userData.lastName;

                console.log(self.userData);
            }, function errorCallback(response) {
                console.log(response);
            });
        }
        self.testHttpGet();
    }
})();