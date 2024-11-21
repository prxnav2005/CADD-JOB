module _BCD_adder(input logic [7:0] A, B, input logic Cin, output logic [7:0] S, Cout);

logic Ctemp;

always_comb begin 
    {Ctemp, S[3:0]} = (A[3:0] + B[3:0] + Cin < 9) ? 
                      (A[3:0] + B[3:0] + Cin) : 
                      (A[3:0] + B[3:0] + Cin + 4'b0110);

    {Cout, S[7:4]} = (A[7:4] + B[7:4] + Ctemp < 9) ? 
                     (A[7:4] + B[7:4] + Ctemp) : 
                     (A[7:4] + B[7:4] + Ctemp + 4'b0110);
end

endmodule
