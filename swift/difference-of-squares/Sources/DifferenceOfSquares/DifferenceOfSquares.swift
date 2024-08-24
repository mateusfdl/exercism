class Squares {
    var number: Int

    init(_ number: Int) {
        self.number = number
    }

    var squareOfSum: Int {
        return (1 ... number).reduce(0, +) * (1 ... number).reduce(0, +)
    }

    var sumOfSquares: Int {
        return (1 ... number).map { $0 * $0 }.reduce(0, +)
    }

    var differenceOfSquares: Int {
        return squareOfSum - sumOfSquares
    }
}
