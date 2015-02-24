/**
 * Created by roberto on 21/02/15.
 */

Meteor.publish("users", function () {
    return Meteor.users.find({}, {fields: {emails: 1, profile: 1}});
});