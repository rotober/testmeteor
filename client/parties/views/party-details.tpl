 Here you will see and change the details of the party:

 <input ng-model="party.name">
 <input ng-model="party.description">
 <label>Is public</label>
 <input type="checkbox" ng-model="party.public">
 <button ng-click="save()">Save</button>
 <button ng-click="reset()">Reset form</button>
 <button><a href="/parties">Cancel</a></button>

 <ul>
   Users:
   <li ng-repeat="user in users">
     <div>{{ user.emails[0].address }}</div>
   </li>
 </ul>