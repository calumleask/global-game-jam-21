{
  "spriteId": {
    "name": "spr_player_walk",
    "path": "sprites/spr_player_walk/spr_player_walk.yy",
  },
  "solid": false,
  "visible": true,
  "spriteMaskId": null,
  "persistent": false,
  "parentObjectId": null,
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
    {"isDnD":false,"eventNum":1,"eventType":9,"collisionObjectId":null,"parent":{"name":"obj_player","path":"objects/obj_player/obj_player.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":0,"eventType":3,"collisionObjectId":null,"parent":{"name":"obj_player","path":"objects/obj_player/obj_player.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":1,"eventType":10,"collisionObjectId":null,"parent":{"name":"obj_player","path":"objects/obj_player/obj_player.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":0,"eventType":0,"collisionObjectId":null,"parent":{"name":"obj_player","path":"objects/obj_player/obj_player.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":0,"eventType":4,"collisionObjectId":{"name":"obj_solid","path":"objects/obj_solid/obj_solid.yy",},"parent":{"name":"obj_player","path":"objects/obj_player/obj_player.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":0,"eventType":4,"collisionObjectId":{"name":"obj_solid_shadow_caster","path":"objects/obj_solid_shadow_caster/obj_solid_shadow_caster.yy",},"parent":{"name":"obj_player","path":"objects/obj_player/obj_player.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":0,"eventType":1,"collisionObjectId":null,"parent":{"name":"obj_player","path":"objects/obj_player/obj_player.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
  ],
  "properties": [
    {"varType":3,"value":"False","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"walking","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":6,"value":"0","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"direction_keys_down","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":0,"value":"120","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"walking_speed_pixels_per_second","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":0,"value":"360","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"turning_speed_degrees_per_second","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":0,"value":"0.8","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"walking_anmiation_speed","tags":[],"resourceType":"GMObjectProperty",},
  ],
  "overriddenProperties": [],
  "parent": {
    "name": "Player",
    "path": "folders/Objects/Game/Player.yy",
  },
  "resourceVersion": "1.0",
  "name": "obj_player",
  "tags": [],
  "resourceType": "GMObject",
}