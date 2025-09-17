const std: type = @import("std");

pub fn isPangram(str: []const u8) bool {
    var str_hash = std.AutoArrayHashMap(u8, void).init(std.heap.page_allocator);
    defer str_hash.deinit();

    for (str) |c| {
        if (std.ascii.isAlphabetic(c)) {
            if (!str_hash.contains(c)) str_hash.put(std.ascii.toLower(c), {}) catch continue;
        }
    }

    return str_hash.count() == 26;
}
