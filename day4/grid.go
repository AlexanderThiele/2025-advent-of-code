package main

type Grid []string

func (g Grid) CountAdjacent(row, col int, char byte) int {
	count := 0
	for dr := -1; dr <= 1; dr++ {
		for dc := -1; dc <= 1; dc++ {
			if dr == 0 && dc == 0 {
				continue
			}
			nr, nc := row+dr, col+dc
			if nr >= 0 && nr < len(g) && nc >= 0 && nc < len(g[nr]) {
				if g[nr][nc] == char {
					count++
				}
			}
		}
	}
	return count
}

func (g Grid) CountCellsWithFewNeighbors(char byte, threshold int) int {
	count := 0
	for row := range g {
		for col := range g[row] {
			if g[row][col] == char {
				if g.CountAdjacent(row, col, char) < threshold {
					count++
				}
			}
		}
	}
	return count
}
