module demux(
    input [1:0] Sel,
    input [3:0] Y,
    input Enable,
    output [3:0] local_Lib,
    output [3:0] fireDept,
    output [3:0] school,
    output [3:0] ribShack
    );
    
    
    assign local_Lib = (Enable && Sel == 2'b00 ? Y : 0);
    assign fireDept = (Enable && Sel == 2'b01 ? Y : 0);
    assign school = (Enable && Sel == 2'b10 ? Y : 0);
    assign ribShack = (Enable && Sel == 2'b11 ? Y : 0);
    
endmodule