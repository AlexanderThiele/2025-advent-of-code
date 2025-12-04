# Day 4 - Advent of Code

## Project Structure

- `main.go` - Entry point
- `grid.go` - Grid type with adjacency checking methods
- `input.go` - File reading utilities
- `input.txt` - Puzzle input

## Running

```bash
go run .
```

## Notes

- All files use `package main` (same package = shared scope, no imports needed)
- Grid is a `[]string` type alias with methods for neighbor counting
