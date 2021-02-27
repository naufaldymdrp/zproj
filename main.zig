const std = @import("std");
const expect = @import("std").testing.expect;

pub fn addFive(x: u32) u32 {
    return x;
}

pub fn if_statement() u8 {
    const a: bool = true;
    var x: u8 = 0;

    if (a) {
        x += 1;
    } else {
        x += 2;
    }

    return x;
}

pub fn while_only() u8 {
    var sum: u8 = 0;
    while (sum < 50) {
        sum = sum + 10;
    }

    return sum;
}

pub fn while_withContinue() u8 {
    var sum: u8 = 0; 
    var index: u8 = 0;
    while (sum <= 100) : (sum += 1) {
        index = index + 1;
    }

    return sum;
}

test "while's loop in zig" {
    // while only
    const result_while = while_only();
    expect(result_while == 50);

    const result_while_expression = while_withContinue();
    expect(result_while_expression == 101);
}

pub fn main() void {
    const result = addFive(100);
    var mutable_inferred = "hello world";

    const unknown: i32 = undefined;
    var egk_tahu: f32 = undefined;

    // zig array 
    const array = [5]i32{1, 2, 3, 4, 5};
    const inferred_array = [_]u32{5, 10, 15};
    
    // std.debug.print("The result is {i}\n", .{result});
}

test "if statement" {
    const result = if_statement();
    expect(result == 1);
}
