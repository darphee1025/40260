module core_fs_domain #(
    parameter UDLY = 1
)(
    input  wire     fs_enable,//None 
    output wire     dfs,//None 
    output wire     fs_ready,//None 
    output wire     valid_wd,//None 
    input  wire     vcoremon_ov,//None 
    input  wire     vddio_ov,//None 
    input  wire  [3:0]vmonx_ov,//None 
    input  wire     vcoremon_uv,//None 
    input  wire     vddio_uv,//None 
    input  wire  [3:0]vmonx_uv,//None 
    input  wire     fccu1,//None 
    input  wire     fccu2,//None 
    input  wire     errmon,//None 
    output wire  [3:0]vcoreovth,//vcoremon overrvoltage threshold configuration 
    output wire  [3:0]vcoreuvth,//vcoremon undervoltage threshold configuration 
    output wire     vddio_v,//vcore(vbuck1) monitoring voltage 
    output wire  [3:0]vddioovth,//vddio overvoltage threshold configuration  
    output wire  [3:0]vddiouvth,//vddio undervoltage threshold configuration  
    output wire  [3:0]vmon1ovth,//vmon1 overvoltage threshold configuration  
    output wire  [3:0]vmon1uvth,//vmon1 undervoltage threshold configuration 
    output wire  [3:0]vmon2ovth,//vmon2 overvoltage threshold configuration  
    output wire  [3:0]vmon2uvth,//vmon2 undervoltage threshold configuration 
    output wire  [3:0]vmon3ovth,//vmon3 overvoltage threshold configuration  
    output wire  [3:0]vmon3uvth,//vmon3 undervoltage threshold configuration 
    output wire  [3:0]vmon4ovth,//vmon4 overvoltage threshold configuration  
    output wire  [3:0]vmon4uvth,//vmon4 undervoltage threshold configuration 
    output wire  [3:0]vmon_en,//vmon{4,3,2,1} monitoring enable ,form main otp  
    output wire  [4:0]svs_offset,//a static voltage scaling function allow the mcu reduce th output voltage 
    input  wire     psel2,//None 
    input  wire     psel3,//None 
    input  wire     penable,//None 
    input  wire  [7:0]paddr,//None 
    input  wire     pwrite,//None 
    input  wire  [14:0]pwdata,//None 
    output wire  [14:0]prdata2,//None 
    output wire  [14:0]prdata3//None
 );

endmodule