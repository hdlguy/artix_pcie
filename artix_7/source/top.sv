
module top (
    output  logic[3:0]  ledn,
    //
    input   logic       pcie_clkin_clk_n,
    input   logic       pcie_clkin_clk_p,
    input   logic[3:0]  pcie_mgt_rxn,
    input   logic[3:0]  pcie_mgt_rxp,
    output  logic[3:0]  pcie_mgt_txn,
    output  logic[3:0]  pcie_mgt_txp,
    input   logic       pcie_reset,
    output  logic       pcie_clkreq_l
);

    system system_i(
        .pcie_clkin_clk_n(pcie_clkin_clk_n),
        .pcie_clkin_clk_p(pcie_clkin_clk_p),
        .pcie_mgt_rxn(pcie_mgt_rxn),
        .pcie_mgt_rxp(pcie_mgt_rxp),
        .pcie_mgt_txn(pcie_mgt_txn),
        .pcie_mgt_txp(pcie_mgt_txp),
        .pcie_reset(pcie_reset)
    );
    
    assign pcie_clkreq_l = 1'b0;

    logic[3:0] led = 4'b1111;    
    assign ledn = ~led;

endmodule

