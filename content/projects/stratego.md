# Strate.Go!

I started this project to learn `go`. This is an implementation of the [Stratego](https://en.m.wikipedia.org/wiki/Stratego) game and supports playing both in the terminal and via this website.

## Code

Repository: https://github.com/cBiscuitSurprise/strate-go

<a href="https://github.com/badges/shields/graphs/contributors" alt="Contributors">
        <img src="https://img.shields.io/github/contributors/badges/shields" /></a>

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
│   └── strate.go  # main entry points for the game itself
├── LICENSE
├── main.go
└── README.md
```

## Play

Coming Soon! My goal is to get this game playable from right here 👇.
