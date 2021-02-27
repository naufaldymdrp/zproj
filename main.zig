const std = @import("std");

pub fn addFive(x: u32) u32 {
    return x;
}

pub fn main() void {
    const result = addFive(100);

    std.debug.print("The result is {s}\n", "fuck");
}
