`define w16(b)  (16'b0 | b)
`define n(b)   (95-(8*b))
`define m(b)   (127-(16*b))

module State_Unpack__poly_frombytes__r (
  input               clk,
  input       [95:0]  a,
  output reg  [127:0] r
);

always @(*) begin
  r[`m(0) -: 16] <= ((a[`n(0)  -: 8] >> 0) | (`w16(a[`n(1)  -: 8]) << 8)) & 16'hFFF;
  r[`m(1) -: 16] <= ((a[`n(1)  -: 8] >> 4) | (`w16(a[`n(2)  -: 8]) << 4)) & 16'hFFF;
  r[`m(2) -: 16] <= ((a[`n(3)  -: 8] >> 0) | (`w16(a[`n(4)  -: 8]) << 8)) & 16'hFFF;
  r[`m(3) -: 16] <= ((a[`n(4)  -: 8] >> 4) | (`w16(a[`n(5)  -: 8]) << 4)) & 16'hFFF;
  r[`m(4) -: 16] <= ((a[`n(6)  -: 8] >> 0) | (`w16(a[`n(7)  -: 8]) << 8)) & 16'hFFF;
  r[`m(5) -: 16] <= ((a[`n(7)  -: 8] >> 4) | (`w16(a[`n(8)  -: 8]) << 4)) & 16'hFFF;
  r[`m(6) -: 16] <= ((a[`n(9)  -: 8] >> 0) | (`w16(a[`n(10) -: 8]) << 8)) & 16'hFFF;
  r[`m(7) -: 16] <= ((a[`n(10) -: 8] >> 4) | (`w16(a[`n(11) -: 8]) << 4)) & 16'hFFF;
end
  
endmodule

`undef w16
`undef n
`undef m