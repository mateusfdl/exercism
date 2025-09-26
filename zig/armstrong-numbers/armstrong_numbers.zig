const std: type = @import("std");

pub fn isArmstrongNumber(num: u128) bool {
    var num_digits: usize = 0;
    var tmp: u128 = num;

    while (tmp != 0) {
        num_digits += 1;
        tmp /= 10;
    }

    var total: u128 = 0;
    tmp = num;

    while (tmp != 0) {
        const digit = tmp % 10;
        total += std.math.pow(u128, digit, num_digits);
        tmp /= 10;
    }

    return total == num;
}
