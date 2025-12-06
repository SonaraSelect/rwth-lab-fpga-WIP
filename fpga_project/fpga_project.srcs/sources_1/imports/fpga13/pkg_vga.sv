`default_nettype none

package vga_pkg;
	//Raw parameters
	localparam int X_PIXEL_SCREEN=480;
	localparam int Y_PIXEL_SCREEN=640;
	
	localparam int X_PIXEL_MEM   =97;
	localparam int Y_PIXEL_MEM   =257;
	
	localparam int CDEPTH = 4; //Bits per color
	localparam int BITSPERPIXEL = 8;
	
	//Derived structs
	typedef struct packed {
		logic [$clog2(Y_PIXEL_SCREEN)-1:0] pixel_x;
		logic [$clog2(X_PIXEL_SCREEN)-1:0] pixel_y;
		logic hs;
		logic vs;
		logic active;
	} vga_ctrl_t;
	localparam vga_ctrl_t vga_ctrl_dv = '{active:1'b0, hs:1'd1, vs:1'd1, pixel_x:'0,pixel_y:'0};
	
	
	typedef struct packed {
		logic [CDEPTH-1:0] blue;
		logic [CDEPTH-1:0] green;
		logic [CDEPTH-1:0] red;
		
	} color_pixel_t;
	localparam color_pixel_t color_pixel_dv = '{'0, '0, '0};
	
	typedef struct packed {
		vga_ctrl_t ctrl;
		color_pixel_t pixel;
	} vga_pixel_t;
	localparam vga_pixel_t vga_pixel_dv = '{pixel:color_pixel_dv, ctrl:vga_ctrl_dv};
	
	typedef logic [BITSPERPIXEL-1:0] raw_pixel_t;
	localparam raw_pixel_t raw_pixel_dv = '0;
	
	typedef struct packed {
		vga_ctrl_t ctrl;
		raw_pixel_t pixel; //The value actually loaded from the frame buffer
	} mem_pixel_t;
	localparam mem_pixel_t mem_pixel_dv = '{ctrl:vga_ctrl_dv, pixel:raw_pixel_dv};
	
	typedef struct packed {
		logic [$clog2(X_PIXEL_MEM)-1:0] pixel_x;
		logic [$clog2(Y_PIXEL_MEM)-1:0] pixel_y;
		raw_pixel_t pixel; //The value actually loaded from the frame buffer
	} render_pixel_t;
	localparam render_pixel_t render_pixel_dv = '{pixel_x:'0, pixel_y:'0, pixel:raw_pixel_dv};

    
endpackage : vga_pkg
