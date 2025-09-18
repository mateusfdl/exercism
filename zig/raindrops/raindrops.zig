const std: type = @import("std");

const pling: []const u8 = "Pling";
const plang: []const u8 = "Plang";
const plong: []const u8 = "Plong";
pub fn convert(buffer: []u8, n: u32) []const u8 {
    var pos: usize = 0;
    if (n % 3 == 0) pos = append(buffer, pos, pling);
    if (n % 5 == 0) pos = append(buffer, pos, plang);
    if (n % 7 == 0) pos = append(buffer, pos, plong);

    if (pos == 0) {
        const slice = std.fmt.bufPrint(buffer, "{}", .{n}) catch unreachable;
        return slice;
    }

    return buffer[0..pos];
}

fn append(buffer: []u8, pos: usize, v: []const u8) usize {
    @memcpy(buffer[pos .. pos + v.len], v);
    return pos + v.len;
}
