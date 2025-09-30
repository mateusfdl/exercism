pub fn squareOfSum(number: usize) usize {
    var total: usize = 0;
    for (0..number + 1) |n| {
        total += n;
    }

    return total * total;
}

pub fn sumOfSquares(number: usize) usize {
    var total: usize = 0;
    for (0..number + 1) |n| {
        total += n * n;
    }

    return total;
}

pub fn differenceOfSquares(number: usize) usize {
    return squareOfSum(number) - sumOfSquares(number);
}
