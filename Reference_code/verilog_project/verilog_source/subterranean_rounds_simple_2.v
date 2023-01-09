module subterranean_rounds_simple_2
(
    input clk,
    input arstn,
    input init,
    input start,
    input encrypt,
    input decrypt,
    input enable_round,
    input [63:0] din,
    input [5:0] din_size,
    output [63:0] dout,
    output free,
    output finish
);

wire [31:0] temp_din_1;
wire [31:0] temp_din_1_xor_dout;
reg [31:0] duplex_din_1;
reg [4:0] duplex_din_1_padding;
wire [32:0] duplex_din_1_padded;

wire [31:0] temp_din_2;
wire [31:0] temp_din_2_xor_dout;
reg [31:0] duplex_din_2;
reg [4:0] duplex_din_2_padding;
wire [32:0] duplex_din_2_padded;

wire [256:0] round_1_a;
wire [32:0]  round_1_din;
wire [256:0] round_1_o;
wire [31:0]  round_1_dout;

reg [31:0] round_1_dout_mask;

wire [256:0] round_2_a;
wire [32:0]  round_2_din;
wire [256:0] round_2_o;
wire [31:0]  round_2_dout;

reg [31:0] round_2_dout_mask;

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
        if (enable_round == 1'b1) begin
            next_state = round_2_o;
        end else begin
            next_state = round_1_o;
        end
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
assign temp_din_2 = din[63:32];

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

always @(*) begin
    if(((encrypt == 1'b1) || (decrypt == 1'b1)) && (din_size[5] != 1'b1)) begin
        case(din_size[4:3])
            2'b00 : begin
                round_2_dout_mask = 32'h00000000;
            end
            2'b01 : begin
                round_2_dout_mask = 32'h000000FF;
            end
            2'b10 : begin
                round_2_dout_mask = 32'h0000FFFF;
            end
            default : begin
                round_2_dout_mask = 32'h00FFFFFF;
            end
        endcase
    end else begin
        round_2_dout_mask = 32'hFFFFFFFF;
    end
end

assign temp_din_1_xor_dout = (round_1_dout & round_1_dout_mask) ^ temp_din_1;
assign temp_din_2_xor_dout = (round_2_dout & round_2_dout_mask) ^ temp_din_2;

always @(*) begin
    if(decrypt == 1'b1) begin
        duplex_din_1 = temp_din_1_xor_dout;
        duplex_din_2 = temp_din_2_xor_dout;
    end else begin
        duplex_din_1 = temp_din_1;
        duplex_din_2 = temp_din_2;
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

always @(*) begin
    case(din_size[5:3])
        3'b000 : begin
            duplex_din_2_padding = 5'b00001;
        end
        3'b001 : begin
            duplex_din_2_padding = 5'b00010;
        end
        3'b010 : begin
            duplex_din_2_padding = 5'b00100;
        end
        3'b011 : begin
            duplex_din_2_padding = 5'b01000;
        end
        3'b100 : begin
            duplex_din_2_padding = 5'b10000;
        end
        default : begin
            duplex_din_2_padding = 5'b00000;
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

assign duplex_din_2_padded[0]     = duplex_din_2[0]   ^ duplex_din_2_padding[0];
assign duplex_din_2_padded[7:1]   = duplex_din_2[7:1];
assign duplex_din_2_padded[8]     = duplex_din_2[8]   ^ duplex_din_2_padding[1];
assign duplex_din_2_padded[15:9]  = duplex_din_2[15:9];
assign duplex_din_2_padded[16]    = duplex_din_2[16]  ^ duplex_din_2_padding[2];
assign duplex_din_2_padded[23:17] = duplex_din_2[23:17];
assign duplex_din_2_padded[24]    = duplex_din_2[24]  ^ duplex_din_2_padding[3];
assign duplex_din_2_padded[31:25] = duplex_din_2[31:25];
assign duplex_din_2_padded[32]    = duplex_din_2_padding[4];

assign round_1_a = reg_state;
assign round_1_din = duplex_din_1_padded;

subterranean_round
round_1 (
    .a(round_1_a),
    .din(round_1_din),
    .o(round_1_o),
    .dout(round_1_dout)
);

assign round_2_a = round_1_o;
assign round_2_din = duplex_din_2_padded;

subterranean_round
round_2 (
    .a(round_2_a),
    .din(round_2_din),
    .o(round_2_o),
    .dout(round_2_dout)
);

assign dout[31:0]  = temp_din_1_xor_dout;
assign dout[63:32] = temp_din_2_xor_dout;
assign free = 1'b1;
assign finish = reg_finish;

endmodule