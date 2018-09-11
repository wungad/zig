const std = @import("std");

const Union = union(enum) {
    Text: []const u8,
    Color: u32,
};

test "const error union field alignment" {
    var union_or_err: error!Union = Union{ .Color = 1234 };
    std.debug.assertOrPanic((union_or_err catch unreachable).Color == 1234);
}
