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

pub fn colorCode(color: ColorBand) usize {
    return @intFromEnum(color);
}

pub fn colors() []const ColorBand {
    return &[10]ColorBand{
        .black,
        .brown,
        .red,
        .orange,
        .yellow,
        .green,
        .blue,
        .violet,
        .grey,
        .white,
    };
}
