pub const ColorBand = enum(u4) {
    black,
    brown,
    red,
    orange,
    yellow,
    green,
    blue,
    violet,
    grey,
    white,
};

pub fn colorCode(colors: [2]ColorBand) usize {
    return concatInts(@intFromEnum(colors[0]), @intFromEnum(colors[1]));
}

fn concatInts(a: usize, b: usize) usize {
    var pow10: usize = 1;
    var tmp: usize = b;

    if (tmp == 0) {
        pow10 = 10;
    } else {
        while (tmp > 0) : (tmp /= 10) {
            pow10 *= 10;
        }
    }

    return a * pow10 + b;
}
