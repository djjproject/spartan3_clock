<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="C_out" />
        <signal name="S3" />
        <signal name="S2" />
        <signal name="S1" />
        <signal name="S0" />
        <signal name="A3" />
        <signal name="B3" />
        <signal name="A1" />
        <signal name="B1" />
        <signal name="B2" />
        <signal name="A2" />
        <signal name="C_in" />
        <signal name="A0" />
        <signal name="B0" />
        <port polarity="Output" name="C_out" />
        <port polarity="Output" name="S3" />
        <port polarity="Output" name="S2" />
        <port polarity="Output" name="S1" />
        <port polarity="Output" name="S0" />
        <port polarity="Input" name="A3" />
        <port polarity="Input" name="B3" />
        <port polarity="Input" name="A1" />
        <port polarity="Input" name="B1" />
        <port polarity="Input" name="B2" />
        <port polarity="Input" name="A2" />
        <port polarity="Input" name="C_in" />
        <port polarity="Input" name="A0" />
        <port polarity="Input" name="B0" />
        <blockdef name="fulladder">
            <timestamp>2014-9-20T10:11:25</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="fulladder" name="XLXI_1">
            <blockpin signalname="XLXN_3" name="C_in" />
            <blockpin signalname="A3" name="A" />
            <blockpin signalname="B3" name="B" />
            <blockpin signalname="C_out" name="C_out" />
            <blockpin signalname="S3" name="S" />
        </block>
        <block symbolname="fulladder" name="XLXI_2">
            <blockpin signalname="XLXN_2" name="C_in" />
            <blockpin signalname="A2" name="A" />
            <blockpin signalname="B2" name="B" />
            <blockpin signalname="XLXN_3" name="C_out" />
            <blockpin signalname="S2" name="S" />
        </block>
        <block symbolname="fulladder" name="XLXI_3">
            <blockpin signalname="XLXN_1" name="C_in" />
            <blockpin signalname="A1" name="A" />
            <blockpin signalname="B1" name="B" />
            <blockpin signalname="XLXN_2" name="C_out" />
            <blockpin signalname="S1" name="S" />
        </block>
        <block symbolname="fulladder" name="XLXI_4">
            <blockpin signalname="C_in" name="C_in" />
            <blockpin signalname="A0" name="A" />
            <blockpin signalname="B0" name="B" />
            <blockpin signalname="XLXN_1" name="C_out" />
            <blockpin signalname="S0" name="S" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="2336" y="1408" name="XLXI_4" orien="M90">
        </instance>
        <instance x="1856" y="1408" name="XLXI_3" orien="M90">
        </instance>
        <instance x="1376" y="1408" name="XLXI_2" orien="M90">
        </instance>
        <instance x="896" y="1408" name="XLXI_1" orien="M90">
        </instance>
        <branch name="XLXN_1">
            <wire x2="1696" y1="1344" y2="1344" x1="1600" />
            <wire x2="1696" y1="1344" y2="1408" x1="1696" />
            <wire x2="1600" y1="1344" y2="1872" x1="1600" />
            <wire x2="2176" y1="1872" y2="1872" x1="1600" />
            <wire x2="2176" y1="1792" y2="1872" x1="2176" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="1216" y1="1344" y2="1408" x1="1216" />
            <wire x2="1440" y1="1344" y2="1344" x1="1216" />
            <wire x2="1440" y1="1344" y2="1856" x1="1440" />
            <wire x2="1696" y1="1856" y2="1856" x1="1440" />
            <wire x2="1696" y1="1792" y2="1856" x1="1696" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="736" y1="1344" y2="1344" x1="624" />
            <wire x2="736" y1="1344" y2="1408" x1="736" />
            <wire x2="624" y1="1344" y2="1872" x1="624" />
            <wire x2="1216" y1="1872" y2="1872" x1="624" />
            <wire x2="1216" y1="1792" y2="1872" x1="1216" />
        </branch>
        <branch name="C_out">
            <wire x2="480" y1="1792" y2="1888" x1="480" />
            <wire x2="736" y1="1888" y2="1888" x1="480" />
            <wire x2="736" y1="1792" y2="1888" x1="736" />
        </branch>
        <branch name="S3">
            <wire x2="864" y1="1792" y2="2000" x1="864" />
        </branch>
        <branch name="S2">
            <wire x2="1344" y1="1792" y2="2000" x1="1344" />
        </branch>
        <branch name="S1">
            <wire x2="1824" y1="1792" y2="2000" x1="1824" />
        </branch>
        <branch name="S0">
            <wire x2="2304" y1="1792" y2="2000" x1="2304" />
        </branch>
        <branch name="A3">
            <wire x2="800" y1="1376" y2="1408" x1="800" />
        </branch>
        <iomarker fontsize="28" x="800" y="1376" name="A3" orien="R270" />
        <branch name="B3">
            <wire x2="864" y1="1376" y2="1408" x1="864" />
        </branch>
        <iomarker fontsize="28" x="864" y="1376" name="B3" orien="R270" />
        <iomarker fontsize="28" x="480" y="1792" name="C_out" orien="R270" />
        <iomarker fontsize="28" x="864" y="2000" name="S3" orien="R90" />
        <iomarker fontsize="28" x="1344" y="2000" name="S2" orien="R90" />
        <iomarker fontsize="28" x="1824" y="2000" name="S1" orien="R90" />
        <iomarker fontsize="28" x="2304" y="2000" name="S0" orien="R90" />
        <branch name="A1">
            <wire x2="1760" y1="1376" y2="1408" x1="1760" />
        </branch>
        <iomarker fontsize="28" x="1760" y="1376" name="A1" orien="R270" />
        <branch name="B1">
            <wire x2="1824" y1="1376" y2="1408" x1="1824" />
        </branch>
        <iomarker fontsize="28" x="1824" y="1376" name="B1" orien="R270" />
        <branch name="B2">
            <wire x2="1344" y1="1376" y2="1408" x1="1344" />
        </branch>
        <iomarker fontsize="28" x="1344" y="1376" name="B2" orien="R270" />
        <branch name="A2">
            <wire x2="1280" y1="1376" y2="1408" x1="1280" />
        </branch>
        <iomarker fontsize="28" x="1280" y="1376" name="A2" orien="R270" />
        <branch name="C_in">
            <wire x2="2176" y1="1376" y2="1408" x1="2176" />
        </branch>
        <iomarker fontsize="28" x="2176" y="1376" name="C_in" orien="R270" />
        <branch name="A0">
            <wire x2="2240" y1="1376" y2="1408" x1="2240" />
        </branch>
        <iomarker fontsize="28" x="2240" y="1376" name="A0" orien="R270" />
        <branch name="B0">
            <wire x2="2304" y1="1376" y2="1408" x1="2304" />
        </branch>
        <iomarker fontsize="28" x="2304" y="1376" name="B0" orien="R270" />
    </sheet>
</drawing>