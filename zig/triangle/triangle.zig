const std: type = @import("std");
pub const TriangleError = error{Invalid};

pub const Triangle = struct {
    uniq_count: usize,

    pub fn init(a: f64, b: f64, c: f64) TriangleError!Triangle {
        if (a <= 0 or b <= 0 or c <= 0) return TriangleError.Invalid;
        if (a + b <= c or a + c <= b or b + c <= a) return TriangleError.Invalid;

        const ab = a == b;
        const bc = b == c;
        const ac = a == c;

        const unique_count: usize = if (ab and bc) 1 else if (ab or bc or ac) 2 else 3;

        return Triangle{ .uniq_count = unique_count };
    }

    pub fn isEquilateral(self: Triangle) bool {
        return self.uniq_count == 1;
    }

    pub fn isIsosceles(self: Triangle) bool {
        return self.uniq_count == 2;
    }

    pub fn isScalene(self: Triangle) bool {
        return self.uniq_count == 3;
    }
};
