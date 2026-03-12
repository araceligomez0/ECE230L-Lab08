module top(
    input [15:0] sw,
    input btnL, //Sel[0] of the mux
    input btnU,  //Sel[1] of the mux
    input btnD,    //Sel[0] of demux
    input btnR,   //Sel[1] of demux
    input btnC,     //Enable of mux/demux
    output [15:0] led
);
    
    wire [3:0] transition;
    
    wire [1:0] mux_Sel;
    assign mux_Sel = {btnU, btnL};
    
    wire[1:0] demux_Sel;
    assign demux_Sel = {btnR, btnD};
    
    mux mux_inst(
        .CEO(sw[3:0]),
        .You(sw[7:4]),
        .Fred(sw[11:8]),
        .Jill(sw[15:12]),
        .Sel(mux_Sel),
        .Enable(btnC),
        .Y(transition)        
    );
    
    demux demux_inst(
        .Y(transition),
        .Sel(demux_Sel),
        .Enable(btnC),
        .local_Lib(led[3:0]),
        .fireDept(led[7:4]),
        .school(led[11:8]),
        .ribShack(led[15:12])
    );
endmodule