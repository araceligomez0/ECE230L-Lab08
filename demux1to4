module demux_1to4(
    input [1:0] Sel,
    input [3:0] Y,
    input Enable,
    output [3:0] local_Lib,
    output [3:0] fireDept,
    output [3:0] School,
    output [3:0] RibShack
    );
    
    
    assign local_Lib = (Enable && Sel == 2'b00 ? Y : 0);
    assign fireDept = (Enable && Sel == 2'b01 ? Y : 0);
    assign School = (Enable && Sel == 2'b10 ? Y : 0);
    assign RibShack = (Enable && Sel == 2'b11 ? Y : 0);
    
endmodule
