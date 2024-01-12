
module top (
    //
    input   logic       sysclk_p,
    input   logic       sysclk_n,
    //
    output  logic[3:0]  ledn,
    //
    input   logic       pcie_clkin_clk_n,
    input   logic       pcie_clkin_clk_p,
    input   logic[3:0]  pcie_mgt_rxn,
    input   logic[3:0]  pcie_mgt_rxp,
    output  logic[3:0]  pcie_mgt_txn,
    output  logic[3:0]  pcie_mgt_txp,
    input   logic       pcie_reset,
    output  logic       pcie_clkreq_l,
    //
    inout   logic       qspi_io0_io,
    inout   logic       qspi_io1_io,
    inout   logic       qspi_io2_io,
    inout   logic       qspi_io3_io,
    inout   logic       qspi_ss_io
);

    logic qspi_io0_i, qspi_io0_o, qspi_io1_t;
    logic qspi_io2_i, qspi_io2_o, qspi_io2_t;
    logic qspi_io3_i, qspi_io3_o, qspi_io3_t;
    logic qspi_ss_i,  qspi_ss_o,  qspi_ss_t;

    system system_i(
        .pcie_clkin_clk_n(pcie_clkin_clk_n),
        .pcie_clkin_clk_p(pcie_clkin_clk_p),
        .pcie_mgt_rxn(pcie_mgt_rxn),
        .pcie_mgt_rxp(pcie_mgt_rxp),
        .pcie_mgt_txn(pcie_mgt_txn),
        .pcie_mgt_txp(pcie_mgt_txp),
        .pcie_reset(pcie_reset),
        //
        .qspi_io0_i(qspi_io0_i),
        .qspi_io0_o(qspi_io0_o),
        .qspi_io0_t(qspi_io0_t),
        .qspi_io1_i(qspi_io1_i),
        .qspi_io1_o(qspi_io1_o),
        .qspi_io1_t(qspi_io1_t),
        .qspi_io2_i(qspi_io2_i),
        .qspi_io2_o(qspi_io2_o),
        .qspi_io2_t(qspi_io2_t),
        .qspi_io3_i(qspi_io3_i),
        .qspi_io3_o(qspi_io3_o),
        .qspi_io3_t(qspi_io3_t),
        .qspi_ss_i(qspi_ss_i),
        .qspi_ss_o(qspi_ss_o),
        .qspi_ss_t(qspi_ss_t)        
    );
    
    IOBUF qspi_io0_iobuf (.I(qspi_io0_o), .IO(qspi_io0_io), .O(qspi_io0_i), .T(qspi_io0_t));
    IOBUF qspi_io1_iobuf (.I(qspi_io1_o), .IO(qspi_io1_io), .O(qspi_io1_i), .T(qspi_io1_t));
    IOBUF qspi_io2_iobuf (.I(qspi_io2_o), .IO(qspi_io2_io), .O(qspi_io2_i), .T(qspi_io2_t));
    IOBUF qspi_io3_iobuf (.I(qspi_io3_o), .IO(qspi_io3_io), .O(qspi_io3_i), .T(qspi_io3_t));
    IOBUF qspi_ss_iobuf  (.I(qspi_ss_o),  .IO(qspi_ss_io),  .O(qspi_ss_i),  .T(qspi_ss_t));
    
    assign pcie_clkreq_l = 1'b0;

    logic clk;
    IBUFDS #(.DIFF_TERM("FALSE"), .IBUF_LOW_PWR("TRUE"), .IOSTANDARD("DEFAULT")) IBUFDS_inst (.O(clk), .I(sysclk_p), .IB(sysclk_n));
    
    logic[3:0] led;
    logic[27:0] led_count;
    always_ff @(posedge clk) begin
        led_count <= led_count + 1;
        led <= led_count[27:24];
    end    
    assign ledn = ~led;

endmodule

