package binarysearch

func SearchInts(list []int, key int) int {
	return RecursiveBinarySearch(list, key)
}

func RecursiveBinarySearch(list []int, key int) int {
	middle := len(list) / 2

	if list[middle] == key {
		return middle
	}
	if len(list) == 1 {
		return -1
	}
	if list[middle] > key {
		return RecursiveBinarySearch(list[:middle], key)
	}

	return RecursiveBinarySearch(list[middle:], key)
}
