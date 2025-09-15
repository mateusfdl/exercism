const std: type = @import("std");
pub const NucleotideError = error{Invalid};

pub const Counts = struct {
    a: u32,
    c: u32,
    g: u32,
    t: u32,

    fn init() Counts {
        return Counts{
            .a = 0,
            .c = 0,
            .g = 0,
            .t = 0,
        };
    }

    fn inc(self: *Counts, n: u8) NucleotideError!void {
        switch (n) {
            'A' => self.a += 1,
            'C' => self.c += 1,
            'G' => self.g += 1,
            'T' => self.t += 1,
            else => return NucleotideError.Invalid,
        }
    }
};

pub fn countNucleotides(s: []const u8) NucleotideError!Counts {
    var counts = Counts.init();
    for (s) |n| try counts.inc(n);

    return counts;
}
