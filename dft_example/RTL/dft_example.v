module dft_example (
    input wire clk,          // Clock signal
    input wire rst_n,        // Active-low reset
    input wire scan_en,      // Scan enable signal
    input wire scan_in,      // Scan input
    output wire scan_out,    // Scan output
    input wire [1:0] a,      // 2-bit input
    input wire [1:0] b,      // 2-bit input
    output reg [1:0] y       // 2-bit output
);

    // Internal signals
    reg [1:0] reg_a;         // Sequential register for input 'a'
    reg [1:0] reg_b;         // Sequential register for input 'b'
    wire [1:0] comb_logic;   // Combinational logic output

    // Sequential logic: Registers for inputs 'a' and 'b'
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            reg_a <= 2'b00;  // Reset to 0
            reg_b <= 2'b00;  // Reset to 0
        end else begin
            reg_a <= a;       // Capture input 'a'
            reg_b <= b;       // Capture input 'b'
        end
    end

    // Combinational logic: Addition of 'reg_a' and 'reg_b'
    assign comb_logic = reg_a + reg_b;

    // Sequential logic: Register for output 'y'
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            y <= 2'b00;       // Reset to 0
        end else begin
            y <= comb_logic; // Capture combinational logic output
        end
    end

    // Scan chain implementation
    reg scan_ff;             // Scan flip-flop
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            scan_ff <= 1'b0;  // Reset scan flip-flop
        end else if (scan_en) begin
            scan_ff <= scan_in; // Shift in scan data
        end
    end

    // Scan output
    assign scan_out = scan_ff;

endmodule
