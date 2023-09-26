// Luke Dischiave
2 typedef enum logic [2:0] {
3 IDLE = 3'b000,
4 L1 = 3'b001,
5 L2 = 3'b011,
6 L3 = 3'b010,
7 R1 = 3'b101,
8 R2 = 3'b110,
9 R3 = 3'b111,
10 LR3 = 3'b100
11 } t_tbird_lights_state;
12
13 module tbird_fsm (
14 input logic clk,
15 input logic rst_b,
16 input logic left,
17 input logic right,
18 input logic haz,
19 output logic [2:0] l_lights,
20 output logic [2:0] r_lights
21 );
22 t_tbird_lights_state state;
23
24 always_ff @(posedge clk or negedge rst_b) begin
25 if (~rst_b)
26 state <= IDLE;
27 else
28 case (state)
29 IDLE: begin
30 if ( (left & right) | haz)
31 state <= LR3;
32 else if (left)
33 state <= L1;
34 else if (right)
35 state <= R1;
36 else
37 state <= IDLE;
38 end
39 L1: state <= haz ? LR3 : L2;
40 L2: state <= haz ? LR3 : L3;
41 L3: state <= IDLE;
42 R1: state <= haz ? LR3 : R2;
43 R2: state <= haz ? LR3 : R3;
44 R3: state <= IDLE;
45 LR3: state <= IDLE;
46 endcase
47 end
48
49 always_comb begin
50 case (state)
51 IDLE: begin
52 l_lights = 3'b000;
53 r_lights = 3'b000;
54 end
55 L1: begin
56 l_lights = 3'b001;
57 r_lights = 3'b000;
58 end
59 L2: begin
60 l_lights = 3'b011;
61 r_lights = 3'b000;
62 end
63 L3: begin
64 l_lights = 3'b111;
65 r_lights = 3'b000;
66 end
67 R1: begin
68 l_lights = 3'b000;
69 r_lights = 3'b001;
70 end
71 R2: begin
72 l_lights = 3'b000;
73 r_lights = 3'b011;
74 end
75 R3: begin
76 l_lights = 3'b000;
77 r_lights = 3'b111;
78 end
79 LR3: begin
80 l_lights = 3'b111;
81 r_lights = 3'b111;
82 end
83 endcase
84 end
85
86 endmodule
