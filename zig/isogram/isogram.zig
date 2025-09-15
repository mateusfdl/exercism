const std: type = @import("std");

pub fn isIsogram(str: []const u8) bool {
    var buf: [256]u8 = undefined;

    const formatted = toLower(str, buf[0..str.len]);

    var str_hash = std.AutoArrayHashMap(u8, void).init(std.heap.page_allocator);

    defer str_hash.deinit();

    for (formatted) |c| {
        if (str_hash.contains(c)) return false;

        _ = str_hash.put(c, {}) catch return false;
    }

    return true;
}

fn toLower(input: []const u8, buf: []u8) []u8 {
    var i: usize = 0;

    for (input) |c| {
        if (std.ascii.isAlphabetic(c)) {
            buf[i] = std.ascii.toLower(c);

            i += 1;
        }
    }

    return buf[0..i];
}
