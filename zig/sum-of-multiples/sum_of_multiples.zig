const std = @import("std");
const mem = std.mem;

pub fn sum(allocator: mem.Allocator, factors: []const u32, limit: u32) !u64 {
    var factor_set = try std.DynamicBitSet.initEmpty(allocator, limit + 1);
    defer factor_set.deinit();

    for (factors) |f| if (f > 0) {
        var s = f;

        while (s < limit) : (s += f) factor_set.set(s);
    };

    var it = factor_set.iterator(.{});
    var result: u64 = 0;
    while (it.next()) |i| result += i;

    return result;
}
