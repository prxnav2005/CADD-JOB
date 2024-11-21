module bcd_adder_tb;
    logic [7:0] A, B;
    logic Cin;
    logic [7:0] S;
    logic Cout;

    bcd_adder dut(A, B, Cin, S, Cout);

    initial begin
        A = 8'b00000001; B = 8'b00000001; Cin = 0; #10;
        A = 8'b00001001; B = 8'b00001001; Cin = 1; #10;
        A = 8'b00010000; B = 8'b00000001; Cin = 0; #10;
        A = 8'b01000001; B = 8'b00010001; Cin = 0; #10;
        A = 8'b10011001; B = 8'b10011001; Cin = 1; #10;
        $finish;
    end
endmodule