const std: type = @import("std");

pub fn twoFer(buffer: []u8, name: ?[]const u8) anyerror![]u8 {
    const chosen = if (name) |n|
        if (n.len > 0) n else "you"
    else
        "you";

    return try std.fmt.bufPrint(buffer, "One for {s}, one for me.", .{chosen});
}
