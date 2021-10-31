package raindrops

import "strconv"

func Convert(value int) string{
	raindrops := map[int]string{
		3: "Pling",
		5: "Plang",
		7: "Plong",
	}
	
	var result string

	for i := range raindrops {
		if value % i == 0 {
			result += raindrops[i]
		}
	}

	if len(result) == 0{
		return strconv.Itoa(value)
	} 

	return result
}


