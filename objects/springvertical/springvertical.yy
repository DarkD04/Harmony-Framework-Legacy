{
  "resourceType": "GMObject",
  "resourceVersion": "1.0",
  "name": "SpringVertical",
  "spriteId": {
    "name": "sprYellowSpringVertical",
    "path": "sprites/sprYellowSpringVertical/sprYellowSpringVertical.yy",
  },
  "solid": false,
  "visible": true,
  "managed": true,
  "spriteMaskId": null,
  "persistent": false,
  "parentObjectId": {
    "name": "CollisionObject",
    "path": "objects/CollisionObject/CollisionObject.yy",
  },
  "physicsObject": false,
  "physicsSensor": false,
  "physicsShape": 1,
  "physicsGroup": 1,
  "physicsDensity": 0.5,
  "physicsRestitution": 0.1,
  "physicsLinearDamping": 0.1,
  "physicsAngularDamping": 0.1,
  "physicsFriction": 0.2,
  "physicsStartAwake": true,
  "physicsKinematic": false,
  "physicsShapePoints": [],
  "eventList": [
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":0,"eventType":0,"collisionObjectId":null,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":2,"eventType":3,"collisionObjectId":null,},
  ],
  "properties": [
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"SpringType","varType":6,"value":"\"Yellow\"","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[
        "\"Yellow\"",
        "\"Red\"",
      ],"multiselect":false,"filters":[],},
  ],
  "overriddenProperties": [
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"CanLand","path":"objects/CollisionObject/CollisionObject.yy",},"objectId":{"name":"CollisionObject","path":"objects/CollisionObject/CollisionObject.yy",},"value":"False",},
  ],
  "parent": {
    "name": "Common",
    "path": "folders/Objects/Stage/Common.yy",
  },
}