const std = @import("std");
const mem = std.mem;

pub fn toRna(allocator: mem.Allocator, dna: []const u8) mem.Allocator.Error![]const u8 {
    if (dna.len == 0) return dna;
    var rna: []u8 = try allocator.alloc(u8, dna.len);

    for (dna, 0..) |c, i| {
        rna[i] = switch (c) {
            'G' => 'C',
            'C' => 'G',
            'T' => 'A',
            'A' => 'U',
            else => return mem.Allocator.Error.OutOfMemory,
        };
    }

    return rna;
}
