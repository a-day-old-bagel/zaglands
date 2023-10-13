const w4 = @import("wasm4.zig");

const zaglands_splash = [32]u8{
    0b11111111, 0b11110111,
    0b11111111, 0b11100111,
    0b11111111, 0b11001111,
    0b00010000, 0b00001000,
    0b00010000, 0b00010000,
    0b00111111, 0b00011100,
    0b00111110, 0b00111100,
    0b00111110, 0b00111100,
    
    0b00111100, 0b01111100,
    0b00111100, 0b01111100,
    0b00111000, 0b11111100,
    0b00001000, 0b00001000,
    0b00010000, 0b00001000,
    0b11110011, 0b11111111,
    0b11100111, 0b11111111,
    0b11101111, 0b11111111,
};

export fn start() void {}

export fn update() void {
    w4.DRAW_COLORS.* = 2;
    w4.text("AGLANDS", 21, 10);

    const gamepad = w4.GAMEPAD1.*;
    if (gamepad & w4.BUTTON_1 != 0) {
        w4.DRAW_COLORS.* = 4;
    }

    w4.blit(&zaglands_splash, 4, 4, 16, 16, w4.BLIT_1BPP);
    w4.text("Press X to blink", 16, 90);
}