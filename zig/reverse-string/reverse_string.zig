/// Writes a reversed copy of `s` to `buffer`.
pub fn reverse(buffer: []u8, s: []const u8) []u8 {
    if (s.len == 0) return buffer[0..0];

    var si: usize = s.len - 1;
    var bi: usize = 0;

    while (true) {
        buffer[bi] = s[si];
        if (si == 0) break;
        bi += 1;
        si -= 1;
    }

    return buffer[0..s.len];
}
