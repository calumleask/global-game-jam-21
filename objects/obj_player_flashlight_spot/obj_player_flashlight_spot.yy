{
  "spriteId": {
    "name": "spr_light_spot",
    "path": "sprites/spr_light_spot/spr_light_spot.yy",
  },
  "solid": false,
  "visible": false,
  "spriteMaskId": null,
  "persistent": false,
  "parentObjectId": {
    "name": "obj_light",
    "path": "objects/obj_light/obj_light.yy",
  },
  "physicsObject": false,
  "physicsSensor": false,
  "physicsShape": 1,
  "physicsGroup": 0,
  "physicsDensity": 0.5,
  "physicsRestitution": 0.1,
  "physicsLinearDamping": 0.1,
  "physicsAngularDamping": 0.1,
  "physicsFriction": 0.2,
  "physicsStartAwake": true,
  "physicsKinematic": false,
  "physicsShapePoints": [],
  "eventList": [
    {"isDnD":false,"eventNum":0,"eventType":3,"collisionObjectId":null,"parent":{"name":"obj_player_flashlight_spot","path":"objects/obj_player_flashlight_spot/obj_player_flashlight_spot.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
  ],
  "properties": [
    {"varType":1,"value":"10","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"torch_distance_from_player","tags":[],"resourceType":"GMObjectProperty",},
  ],
  "overriddenProperties": [
    {"propertyId":{"name":"Light_Type","path":"objects/obj_light/obj_light.yy",},"objectId":{"name":"obj_light","path":"objects/obj_light/obj_light.yy",},"value":"\"Spot Light\"","resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMOverriddenProperty",},
    {"propertyId":{"name":"Light_Range","path":"objects/obj_light/obj_light.yy",},"objectId":{"name":"obj_light","path":"objects/obj_light/obj_light.yy",},"value":"2000","resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMOverriddenProperty",},
    {"propertyId":{"name":"Light_Angle","path":"objects/obj_light/obj_light.yy",},"objectId":{"name":"obj_light","path":"objects/obj_light/obj_light.yy",},"value":"60","resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMOverriddenProperty",},
    {"propertyId":{"name":"disabled","path":"objects/obj_light/obj_light.yy",},"objectId":{"name":"obj_light","path":"objects/obj_light/obj_light.yy",},"value":"False","resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMOverriddenProperty",},
    {"propertyId":{"name":"Light_Intensity","path":"objects/obj_light/obj_light.yy",},"objectId":{"name":"obj_light","path":"objects/obj_light/obj_light.yy",},"value":"1","resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMOverriddenProperty",},
  ],
  "parent": {
    "name": "Player",
    "path": "folders/Objects/Game/Player.yy",
  },
  "resourceVersion": "1.0",
  "name": "obj_player_flashlight_spot",
  "tags": [],
  "resourceType": "GMObject",
}