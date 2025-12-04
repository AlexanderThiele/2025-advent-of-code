package main

import "fmt"

func main() {
	lines, err := ReadLines("input.txt")
	if err != nil {
		panic(err)
	}

	grid := Grid(lines)
	count := grid.CountCellsWithFewNeighbors('@', 4)
	fmt.Println("Count:", count)
}
