/**
 * Created by roberto on 21/02/15.
 */

angular.module("myapp").controller("PartyDetailsCtrl", ['$scope', '$stateParams', '$meteorObject', '$meteorCollection',
    function($scope, $stateParams, $meteorObject, $meteorCollection){

        $scope.party = $meteorObject(Parties, $stateParams.partyId).subscribe('parties');

        $scope.users = $meteorCollection(Meteor.users, false).subscribe('users');

        $scope.save = function() {
            $scope.party.save().then(function(numberOfDocs){
                console.log('save success doc affected ', numberOfDocs);
            }, function(error){
                console.log('save error', error);
            });
        };

        $scope.reset = function() {
            $scope.party.reset();
        };

    }]);