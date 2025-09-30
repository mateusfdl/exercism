const std = @import("std");
pub const Coordinate = struct {
    x: f32,
    y: f32,

    pub fn init(x_coord: f32, y_coord: f32) Coordinate {
        return .{ .x = x_coord, .y = y_coord };
    }

    pub fn score(self: Coordinate) usize {
        const hypot = std.math.sqrt(std.math.pow(f32, self.x, 2) + std.math.pow(f32, self.y, 2));

        if (hypot <= 1) return 10;
        if (hypot <= 5) return 5;
        if (hypot <= 10) return 1;

        return 0;
    }
};
