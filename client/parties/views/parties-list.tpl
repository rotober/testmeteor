<form>
  <label>Name</label>
  <input ng-model="newParty.name">
  <label>Description</label>
  <input ng-model="newParty.description">
  <label>Public</label>
  <input type="checkbox" ng-model="newParty.public">
  <button ng-click="newParty.owner=$root.currentUser._id; parties.push(newParty)">Add</button>
  <button ng-click="removeAll()">Remove All</button>
</form>
<ul>
  <li dir-paginate="party in parties | itemsPerPage: perPage" total-items="partiesCount.count">
    <a href="/parties/{{party._id}}">{{party.name}}</a>
    <p>{{party.description}}</p>
    <button ng-click="remove(party)">X</button>
  </li>
</ul>
<dir-pagination-controls on-page-change="pageChanged(newPageNumber)"></dir-pagination-controls>

