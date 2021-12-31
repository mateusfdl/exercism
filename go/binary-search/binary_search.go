package binarysearch

func SearchInts(list []int, key int) int {
	return RecursiveBinarySearch(list, 0, len(list)-1, key)
}

func RecursiveBinarySearch(list []int, listMinimumLenght int, listLenght int, key int) int {
	middle := (listMinimumLenght + listLenght) / 2

	if listMinimumLenght > listLenght {
		return -1
	}

	if key < list[middle] {
		return RecursiveBinarySearch(list, listMinimumLenght, middle-1, key)
	}

	if key > list[middle] {
		return RecursiveBinarySearch(list, middle+1, listLenght, key)
	}

	return middle
}
