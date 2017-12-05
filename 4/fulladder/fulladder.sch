<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="C_in" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="C_out" />
        <signal name="S" />
        <signal name="A" />
        <signal name="B" />
        <port polarity="Input" name="C_in" />
        <port polarity="Output" name="C_out" />
        <port polarity="Output" name="S" />
        <port polarity="Input" name="A" />
        <port polarity="Input" name="B" />
        <blockdef name="halfadder">
            <timestamp>2014-9-20T9:55:57</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <block symbolname="halfadder" name="XLXI_1">
            <blockpin signalname="C_in" name="B" />
            <blockpin signalname="XLXN_5" name="A" />
            <blockpin signalname="S" name="S" />
            <blockpin signalname="XLXN_7" name="C" />
        </block>
        <block symbolname="halfadder" name="XLXI_2">
            <blockpin signalname="A" name="B" />
            <blockpin signalname="B" name="A" />
            <blockpin signalname="XLXN_5" name="S" />
            <blockpin signalname="XLXN_6" name="C" />
        </block>
        <block symbolname="or2" name="XLXI_3">
            <blockpin signalname="XLXN_6" name="I0" />
            <blockpin signalname="XLXN_7" name="I1" />
            <blockpin signalname="C_out" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1136" y="1552" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1568" y="1328" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1696" y="1584" name="XLXI_3" orien="R0" />
        <branch name="C_in">
            <wire x2="1568" y1="1232" y2="1232" x1="1136" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="1536" y1="1456" y2="1456" x1="1520" />
            <wire x2="1536" y1="1296" y2="1456" x1="1536" />
            <wire x2="1568" y1="1296" y2="1296" x1="1536" />
        </branch>
        <branch name="XLXN_6">
            <wire x2="1696" y1="1520" y2="1520" x1="1520" />
        </branch>
        <branch name="XLXN_7">
            <wire x2="1632" y1="1456" y2="1616" x1="1632" />
            <wire x2="2032" y1="1616" y2="1616" x1="1632" />
            <wire x2="1680" y1="1456" y2="1456" x1="1632" />
            <wire x2="1696" y1="1456" y2="1456" x1="1680" />
            <wire x2="2032" y1="1296" y2="1296" x1="1952" />
            <wire x2="2032" y1="1296" y2="1616" x1="2032" />
        </branch>
        <branch name="C_out">
            <wire x2="2080" y1="1488" y2="1488" x1="1952" />
        </branch>
        <branch name="S">
            <wire x2="2080" y1="1232" y2="1232" x1="1952" />
        </branch>
        <iomarker fontsize="28" x="1136" y="1232" name="C_in" orien="R180" />
        <branch name="A">
            <wire x2="1136" y1="1456" y2="1456" x1="1104" />
        </branch>
        <iomarker fontsize="28" x="1104" y="1456" name="A" orien="R180" />
        <branch name="B">
            <wire x2="1136" y1="1520" y2="1520" x1="1104" />
        </branch>
        <iomarker fontsize="28" x="1104" y="1520" name="B" orien="R180" />
        <iomarker fontsize="28" x="2080" y="1232" name="S" orien="R0" />
        <iomarker fontsize="28" x="2080" y="1488" name="C_out" orien="R0" />
    </sheet>
</drawing>