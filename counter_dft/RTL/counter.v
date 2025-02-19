module counter (
    input wire clk,          // Clock signal
    input wire reset,        // Active-high reset
    input wire enable,       // Enable signal
    

    output reg [3:0] count   // 4-bit counter output
);

always @(posedge clk or posedge reset) begin
    if (reset)
        count <= 4'b0000;    // Reset the counter to 0
    else if (enable)
        count <= count + 1;  // Increment the counter if enabled
end

endmodule
