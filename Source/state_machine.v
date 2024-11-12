module state_machine (
    input wire hdmi_clk1x_i,
    input wire key0,
    input wire [2:0] zone,
    output reg [7:0] led,
    output reg zone_bit0,
    output reg zone_bit1,
    output reg zone_bit2
);

    // Define states using parameters instead of typedef enum
    parameter WAITING = 2'b00;
    parameter WORKING = 2'b01;

    reg [1:0] current_state = WAITING, next_state;

    // Counter for 1-second delay
    reg [30:0] counter_10s = 0; // 30-bit counter for 10 seconds (74.25MHz * 10s)

    // Key debounce
    reg key0_debounced = 1;
    reg key0_last = 1;

    // Detect key press
    always @(posedge hdmi_clk1x_i) begin
        key0_debounced <= key0_last & key0;  // Low level indicates pressed
        key0_last <= key0;
    end

    // State transition logic
    always @(posedge hdmi_clk1x_i) begin
        current_state <= next_state;

        case (current_state)
            WAITING: begin
                led <= 8'b00000000;   // All LEDs off in waiting state
                {zone_bit2, zone_bit1, zone_bit0} <= 3'b000; // Zone output is 000 in waiting state
                counter_10s <= 0;     // Clear counter

                if (!key0_debounced) begin
                    // Enter working state on key press
                    next_state <= WORKING;
                    led <= 8'b00000001 << zone; // Light up the corresponding LED
                    {zone_bit2, zone_bit1, zone_bit0} <= zone; // Display zone bits
                end else begin
                    next_state <= WAITING;
                end
            end

            WORKING: begin
                // Count 10 seconds
                if (counter_10s < 74250000) begin
                    counter_10s <= counter_10s + 1;
                    next_state <= WORKING;
                end else begin
                    // Return to waiting state after 10 seconds
                    next_state <= WAITING;
                end
            end
        endcase
    end

endmodule
