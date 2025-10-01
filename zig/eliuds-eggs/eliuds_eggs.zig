const std: type = @import("std");

pub fn eggCount(number: usize) usize {
    var buffer: [@bitSizeOf(usize)]u8 = undefined;

    const bin = std.fmt.bufPrint(&buffer, "{b}", .{number}) catch unreachable;

    var count: usize = 0;

    for (bin) |bit| {
        if (bit == '1') count += 1;
    }

    return count;
}
