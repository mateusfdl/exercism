package resistorcolor

// Colors returns the list of all colors.
var colors = map[string]int{
	"black":  0,
	"brown":  1,
	"red":    2,
	"orange": 3,
	"yellow": 4,
	"green":  5,
	"blue":   6,
	"violet": 7,
	"grey":   8,
	"white":  9,
}

func Colors() []string {
	c := make([]string, len(colors))

	for k, v := range colors {
		c[v] = k
	}

	return c
}

// ColorCode returns the resistance value of the given color.
func ColorCode(color string) int {
	return colors[color]
}
