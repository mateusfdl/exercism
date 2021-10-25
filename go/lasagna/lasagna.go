package lasagna

const OvenTime int = 40
const TimeSpentPreparingLasagnaLayer = 2

// TODO: define the 'OvenTime' constant

// RemainingOvenTime returns the remaining minutes based on the `actual` minutes already in the oven.
func RemainingOvenTime(actualMinutesInOven int) int {
	return OvenTime - actualMinutesInOven
}

// PreparationTime calculates the time needed to prepare the lasagna based on the amount of layers.
func PreparationTime(numberOfLayers int) int {
	return numberOfLayers * TimeSpentPreparingLasagnaLayer
}

// ElapsedTime calculates the total time needed to create and bake a lasagna.
func ElapsedTime(numberOfLayers, actualMinutesInOven int) int {
	return actualMinutesInOven + PreparationTime(numberOfLayers)
}
