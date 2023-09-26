// Luke Dischiave
2 module testbench_hw8 ();
3
4 logic clk, rst_b, left, right, haz;
5 logic [2:0] l_lights, r_lights;
6
7 tbird_fsm UUT (
8 clk, rst_b, left, right, haz, l_lights, r_lights
9 );
10
11 initial begin
12 clk = 1'b0;
13 rst_b = 1'b1;
14 left = 1'b0;
15 right = 1'b0;
16 haz = 1'b0;
17
18 forever #5 clk = ~clk;
19 end
20
21 initial begin
22 #10;
23 rst_b = 1'b0;
24 #20;
25 rst_b = 1'b1;
26 #20;
27 right = 1'b1;
28 #40;
29 right = 1'b0;
30 left = 1'b1;
31 #40;
32 left = 1'b0;
33 right = 1'b1;
34 #10;
35 right = 1'b0;
36 haz = 1'b1;
37 #10;
38 haz = 1'b0;
39 #10;
40 right = 1'b1;
41 #20;
42 right = 1'b0;
43 haz = 1'b1;
44 #10;
45 haz = 1'b0;
46 #10;
47 left = 1'b1;
48 #10;
49 left = 1'b0;
50 haz = 1'b1;
51 #10;
52 haz = 1'b0;
53 #10;
54 left = 1'b1;
55 #20;
56 left = 1'b0;
57 haz = 1'b1;
58 #10;
59 haz = 1'b0;
60 #10;
61 $finish();
62 end
63 endmodule
