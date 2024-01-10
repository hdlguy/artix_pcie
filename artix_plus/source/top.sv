
module top(
    // pcie
    input   logic [0:0]     diff_clock_rtl_0_clk_n,
    input   logic [0:0]     diff_clock_rtl_0_clk_p,
    input   logic [3:0]     pcie_7x_mgt_rtl_0_rxn,
    input   logic [3:0]     pcie_7x_mgt_rtl_0_rxp,
    output  logic [3:0]     pcie_7x_mgt_rtl_0_txn,
    output  logic [3:0]     pcie_7x_mgt_rtl_0_txp,
    input   logic           reset_rtl_0,
    //
    input   logic           clkin,
    output  logic [7:0]     led
);

    logic clk;
    assign clk = clkin;
    

    logic[31:0] led_count;
    always_ff @(posedge clk) begin
        led_count <= led_count + 1;
        led <= led_count[31:24];
    end
    

    system system_i(
        .diff_clock_rtl_0_clk_n(diff_clock_rtl_0_clk_n),
        .diff_clock_rtl_0_clk_p(diff_clock_rtl_0_clk_p),
        .pcie_7x_mgt_rtl_0_rxn(pcie_7x_mgt_rtl_0_rxn),
        .pcie_7x_mgt_rtl_0_rxp(pcie_7x_mgt_rtl_0_rxp),
        .pcie_7x_mgt_rtl_0_txn(pcie_7x_mgt_rtl_0_txn),
        .pcie_7x_mgt_rtl_0_txp(pcie_7x_mgt_rtl_0_txp),
        .reset_rtl_0(reset_rtl_0)
    );

endmodule
