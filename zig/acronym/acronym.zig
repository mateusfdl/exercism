const std = @import("std");
const mem = std.mem;

pub fn abbreviate(allocator: mem.Allocator, words: []const u8) mem.Allocator.Error![]u8 {
    var chars = try allocator.alloc(u8, words.len);
    defer allocator.free(chars);

    var is_skipping: bool = false;
    var last_written_i: usize = 0;

    for (words) |c| {
        if (is_skipping and !std.ascii.isAlphabetic(c) and !whitelisted(c)) {
            is_skipping = false;
        }

        if (std.ascii.isAlphabetic(c) and !is_skipping) {
            chars[last_written_i] = std.ascii.toUpper(c);
            last_written_i += 1;
            is_skipping = true;
        }
    }

    return allocator.dupe(u8, chars[0..last_written_i]);
}

fn whitelisted(c: u8) bool {
    return switch (c) {
        '\'' => true,
        else => false,
    };
}
