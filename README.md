# WorldEnvironmentManager - Version 0.1

for tweening between multiple WorldEnvironment nodes in Godot 3.x

### How to use

- add WorldEnvironmentManager to scene or as singleton,
- setup Environments enum to the titles of your environments
- add environments to environments array
- add WorldEnvironmentArea to your level, set the collision layer (default layer 15) of the volume to that of what you want to trigger the transition (e.g. the player, a camera, etc)

when an actor leaves the volume it will default back to the environment in the first slot

# Future Features
  1. nested environments
  
please feel free to file an issue with bug reports or feature requests, I do want to keep this addon on the smaller side but am open to new ideas :)


https://user-images.githubusercontent.com/1384496/206576364-1218c8bf-428e-479e-8ac5-309706a03e0c.mp4

