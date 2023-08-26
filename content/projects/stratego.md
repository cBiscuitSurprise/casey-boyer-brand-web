# Strate.Go!

I started this project to learn `go`. This is an implementation of the [Stratego](https://en.m.wikipedia.org/wiki/Stratego) game and supports playing both in the terminal and via this website.

## Architecture

This app is now running in a kubernetes cluster. It's currently setup to run 2 instances of the application and is automatically deployed via Jenkins. We currently have an Envoy reverse proxy in front of the cluster (for legacy reasons).

![](resource:images/strate-go-architecture.png)

## Code

Repository: https://github.com/cBiscuitSurprise/strate-go

* [x] basic health check implementation
* [x] basic flutter site integration
* [ ] [**WIP**] gameplay implementation
* [ ] gameplay flutter site integration

### Project Layout

```bash
strate-go
├── cmd
│   ├── play.go    # cli `strate-go play ...` for playing on the terminal
│   ├── root.go    # cli core
│   └── serve.go   # cli `strate-go serve ...` for playing via the web
├── go.mod
├── go.sum
├── internal
│   ├── core/      # core components for the game
│   ├── errors/    # project errors
│   ├── game/      # high-level components for the game (board/game)
│   ├── pieces/    # detailed behavior for th pieces
│   ├── web/       # gRPC server for the `serve` option
│   └── strate.go  # main entry points for the game itself
├── LICENSE
├── main.go
└── README.md
```

### Build

* **Bazel**: This project is now built using Bazel. It was fun to learn this build system.
* **Jenkins**: We've created a Jenkins pipeline that pulls the latest commit and automatically builds the go executable which is pretty awesome!
    * Next we'll add a stage to deploy this artifact to an artifact repo (probably just S3 for now) and then create another Jenkins pipeline that can eventually pull in all projects on this site and keep it up to date automatically!
    * So far, just the strate-go pipeline is up and running and it's only doing the build. I'll be adding the test and deploy steps incrementally.
        ![](resource:images/stratego_jenkins_pipeline_837x400.png)
* **Kubernetes**: This service runs in kubernetes.

![](resource:images/casey-boyer-brand-strate-go-cd_653x1000.png)

But first, I want to start actually playing the game here 😄

## Play

You've probably already found the game (it should be at the top of this page). For now we've just implemented some very basic pings (they're basically the same now, but eventually the difference will be Deep-Ping will do more in-depth work on the server whereas Ping is very light, "just respond" -- right now they both "just respond")
