/**
 * Created by roberto on 24/02/15.
 */

angular.module("myapp").filter('uninvited', function () {
    return function (users, party) {
        if (!party)
            return false;

        return _.filter(users, function (user) {
            if (user._id == party.owner ||
                _.contains(party.invited, user._id))
                return false;
            else
                return true;
        });
    }
});