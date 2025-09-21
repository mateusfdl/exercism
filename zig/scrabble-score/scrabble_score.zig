const std: type = @import("std");

pub fn score(s: []const u8) u32 {
    var points: u32 = 0;

    for (s) |c| {
        points += switch (std.ascii.toUpper(c)) {
            'A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T' => 1,
            'D', 'G' => 2,
            'B', 'C', 'M', 'P' => 3,
            'F', 'H', 'V', 'W', 'Y' => 4,
            'K' => 5,
            'J', 'X' => 8,
            'Q', 'Z' => 10,
            else => 0,
        };
    }

    return points;
}
