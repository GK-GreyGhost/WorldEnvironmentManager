# WorldEnvironmentManager - Version 0.1

for tweening between multiple WorldEnvironment nodes in Godot 3.x

### How to use

- Enable WorldEnvironmentManager addon,
- setup Environments enum to the titles of your environments
- add environments to environments array
- add WorldEnvironmentArea to your level, set the collision layer (default layer 15) of the volume to that of what you want to trigger the transition (e.g. the player, a camera, etc)

when an actor leaves the volume it will default back to the environment in the first slot

# Future Features
  1. nested environments
  2. WorldEnvironmentsConfig node or something to enable config via exports / drag and drop
  
please feel free to file an issue with bug reports or feature requests, I do want to keep this addon on the smaller side but am open to new ideas :)
