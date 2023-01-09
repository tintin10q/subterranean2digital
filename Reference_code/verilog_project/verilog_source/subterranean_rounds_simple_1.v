module subterranean_rounds_simple_1
(
    input clk,
    input arstn,
    input init,
    input start,
    input encrypt,
    input decrypt,
    input [31:0] din,
    input [2:0] din_size,
    output [31:0] dout,
    output free,
    output finish
);

wire [31:0] temp_din_1;
wire [31:0] temp_din_1_xor_dout;
reg [31:0] duplex_din_1;
reg [4:0] duplex_din_1_padding;
wire [32:0] duplex_din_1_padded;

wire [256:0] round_1_a;
wire [32:0]  round_1_din;
wire [256:0] round_1_o;
wire [31:0]  round_1_dout;

reg [31:0] round_1_dout_mask;

reg [256:0]  reg_state;
reg [256:0]  next_state;

reg reg_finish;
reg next_finish;

always @(posedge clk) begin
    reg_state <= next_state;
end

always @(*) begin
    if(init == 1'b1) begin
        next_state = 257'h0;
    end else if (start == 1'b1) begin
        next_state = round_1_o;
    end else begin
        next_state = reg_state;
    end
end

always @(posedge clk or negedge arstn) begin
    if (arstn == 1'b0) begin
        reg_finish <= 1'b0;
    end else begin
        reg_finish <= next_finish;
    end
end

always @(*) begin
    if(start == 1'b1) begin
        next_finish = 1'b1;
    end else begin
        next_finish = 1'b0;
    end
end

assign temp_din_1 = din[31:0];

always @(*) begin
    if(((encrypt == 1'b1) || (decrypt == 1'b1)) && (din_size[2] != 1'b1)) begin
        case(din_size[1:0])
            2'b00 : begin
                round_1_dout_mask = 32'h00000000;
            end
            2'b01 : begin
                round_1_dout_mask = 32'h000000FF;
            end
            2'b10 : begin
                round_1_dout_mask = 32'h0000FFFF;
            end
            default : begin
                round_1_dout_mask = 32'h00FFFFFF;
            end
        endcase
    end else begin
        round_1_dout_mask = 32'hFFFFFFFF;
    end
end

assign temp_din_1_xor_dout = (round_1_dout & round_1_dout_mask) ^ temp_din_1;

always @(*) begin
    if(decrypt == 1'b1) begin
        duplex_din_1 = temp_din_1_xor_dout;
    end else begin
        duplex_din_1 = temp_din_1;
    end
end

always @(*) begin
    case(din_size[2:0])
        3'b000 : begin
            duplex_din_1_padding = 5'b00001;
        end
        3'b001 : begin
            duplex_din_1_padding = 5'b00010;
        end
        3'b010 : begin
            duplex_din_1_padding = 5'b00100;
        end
        3'b011 : begin
            duplex_din_1_padding = 5'b01000;
        end
        3'b100 : begin
            duplex_din_1_padding = 5'b10000;
        end
        default : begin
            duplex_din_1_padding = 5'b00000;
        end
    endcase
end

assign duplex_din_1_padded[0]     = duplex_din_1[0]   ^ duplex_din_1_padding[0];
assign duplex_din_1_padded[7:1]   = duplex_din_1[7:1];
assign duplex_din_1_padded[8]     = duplex_din_1[8]   ^ duplex_din_1_padding[1];
assign duplex_din_1_padded[15:9]  = duplex_din_1[15:9];
assign duplex_din_1_padded[16]    = duplex_din_1[16]  ^ duplex_din_1_padding[2];
assign duplex_din_1_padded[23:17] = duplex_din_1[23:17];
assign duplex_din_1_padded[24]    = duplex_din_1[24]  ^ duplex_din_1_padding[3];
assign duplex_din_1_padded[31:25] = duplex_din_1[31:25];
assign duplex_din_1_padded[32]    = duplex_din_1_padding[4];

assign round_1_a = reg_state;
assign round_1_din = duplex_din_1_padded;

subterranean_round
round_1 (
    .a(round_1_a),
    .din(round_1_din),
    .o(round_1_o),
    .dout(round_1_dout)
);

assign dout[31:0]  = temp_din_1_xor_dout;
assign free = 1'b1;
assign finish = reg_finish;

endmodule