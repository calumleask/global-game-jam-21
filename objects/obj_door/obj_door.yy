{
  "spriteId": {
    "name": "spr_door",
    "path": "sprites/spr_door/spr_door.yy",
  },
  "solid": true,
  "visible": true,
  "spriteMaskId": null,
  "persistent": false,
  "parentObjectId": {
    "name": "obj_collision_trigger_shadow_caster",
    "path": "objects/obj_collision_trigger_shadow_caster/obj_collision_trigger_shadow_caster.yy",
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
    {"isDnD":false,"eventNum":0,"eventType":0,"collisionObjectId":null,"parent":{"name":"obj_door","path":"objects/obj_door/obj_door.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":0,"eventType":3,"collisionObjectId":null,"parent":{"name":"obj_door","path":"objects/obj_door/obj_door.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":10,"eventType":7,"collisionObjectId":null,"parent":{"name":"obj_door","path":"objects/obj_door/obj_door.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
  ],
  "properties": [
    {"varType":3,"value":"False","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"open","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":3,"value":"0","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"locked","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":3,"value":"0","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"invert_open_direction","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":4,"value":"[]","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"on_open_enable_lights","tags":[],"resourceType":"GMObjectProperty",},
  ],
  "overriddenProperties": [
    {"propertyId":{"name":"interaction_enabled","path":"objects/obj_collision_trigger_shadow_caster/obj_collision_trigger_shadow_caster.yy",},"objectId":{"name":"obj_collision_trigger_shadow_caster","path":"objects/obj_collision_trigger_shadow_caster/obj_collision_trigger_shadow_caster.yy",},"value":"True","resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMOverriddenProperty",},
  ],
  "parent": {
    "name": "Interactable",
    "path": "folders/Objects/Game/Interactable.yy",
  },
  "resourceVersion": "1.0",
  "name": "obj_door",
  "tags": [],
  "resourceType": "GMObject",
}