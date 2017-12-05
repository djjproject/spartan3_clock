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
        <signal name="cout" />
        <signal name="s3" />
        <signal name="a3" />
        <signal name="b3" />
        <signal name="a2" />
        <signal name="b2" />
        <signal name="s2" />
        <signal name="a1" />
        <signal name="b1" />
        <signal name="s1" />
        <signal name="s0" />
        <signal name="XLXN_15" />
        <signal name="XLXN_16" />
        <signal name="XLXN_17" />
        <port polarity="Output" name="cout" />
        <port polarity="Output" name="s3" />
        <port polarity="Input" name="a3" />
        <port polarity="Input" name="b3" />
        <port polarity="Input" name="a2" />
        <port polarity="Input" name="b2" />
        <port polarity="Output" name="s2" />
        <port polarity="Input" name="a1" />
        <port polarity="Input" name="b1" />
        <port polarity="Output" name="s1" />
        <port polarity="Output" name="s0" />
        <port polarity="Input" name="XLXN_15" />
        <port polarity="Input" name="XLXN_16" />
        <port polarity="Input" name="XLXN_17" />
        <blockdef name="full">
            <timestamp>2014-9-25T15:45:14</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="fullb">
            <timestamp>2014-9-25T15:45:8</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="full" name="XLXI_1">
            <blockpin signalname="b3" name="a" />
            <blockpin signalname="a3" name="b" />
            <blockpin signalname="XLXN_3" name="cin" />
            <blockpin signalname="s3" name="sum" />
            <blockpin signalname="cout" name="cout" />
        </block>
        <block symbolname="full" name="XLXI_2">
            <blockpin signalname="b2" name="a" />
            <blockpin signalname="a2" name="b" />
            <blockpin signalname="XLXN_2" name="cin" />
            <blockpin signalname="s2" name="sum" />
            <blockpin signalname="XLXN_3" name="cout" />
        </block>
        <block symbolname="fullb" name="XLXI_3">
            <blockpin signalname="b1" name="a" />
            <blockpin signalname="a1" name="b" />
            <blockpin signalname="XLXN_1" name="cin" />
            <blockpin signalname="s1" name="sum" />
            <blockpin signalname="XLXN_2" name="cout" />
        </block>
        <block symbolname="fullb" name="XLXI_4">
            <blockpin signalname="XLXN_17" name="a" />
            <blockpin signalname="XLXN_16" name="b" />
            <blockpin signalname="XLXN_15" name="cin" />
            <blockpin signalname="s0" name="sum" />
            <blockpin signalname="XLXN_1" name="cout" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="640" y="1472" name="XLXI_1" orien="R90">
        </instance>
        <instance x="1120" y="1472" name="XLXI_2" orien="R90">
        </instance>
        <instance x="1600" y="1472" name="XLXI_3" orien="R90">
        </instance>
        <instance x="2064" y="1472" name="XLXI_4" orien="R90">
        </instance>
        <branch name="XLXN_1">
            <wire x2="1632" y1="1392" y2="1392" x1="1520" />
            <wire x2="1632" y1="1392" y2="1472" x1="1632" />
            <wire x2="1520" y1="1392" y2="1936" x1="1520" />
            <wire x2="2096" y1="1936" y2="1936" x1="1520" />
            <wire x2="2096" y1="1856" y2="1936" x1="2096" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="1152" y1="1408" y2="1408" x1="1056" />
            <wire x2="1152" y1="1408" y2="1472" x1="1152" />
            <wire x2="1056" y1="1408" y2="1920" x1="1056" />
            <wire x2="1632" y1="1920" y2="1920" x1="1056" />
            <wire x2="1632" y1="1856" y2="1920" x1="1632" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="672" y1="1408" y2="1472" x1="672" />
            <wire x2="896" y1="1408" y2="1408" x1="672" />
            <wire x2="896" y1="1408" y2="1872" x1="896" />
            <wire x2="1152" y1="1872" y2="1872" x1="896" />
            <wire x2="1152" y1="1856" y2="1872" x1="1152" />
        </branch>
        <branch name="cout">
            <wire x2="672" y1="1856" y2="1888" x1="672" />
        </branch>
        <iomarker fontsize="28" x="672" y="1888" name="cout" orien="R90" />
        <branch name="s3">
            <wire x2="800" y1="1856" y2="1888" x1="800" />
        </branch>
        <iomarker fontsize="28" x="800" y="1888" name="s3" orien="R90" />
        <branch name="a3">
            <wire x2="736" y1="1440" y2="1472" x1="736" />
        </branch>
        <iomarker fontsize="28" x="736" y="1440" name="a3" orien="R270" />
        <branch name="b3">
            <wire x2="800" y1="1440" y2="1472" x1="800" />
        </branch>
        <iomarker fontsize="28" x="800" y="1440" name="b3" orien="R270" />
        <branch name="a2">
            <wire x2="1216" y1="1440" y2="1472" x1="1216" />
        </branch>
        <iomarker fontsize="28" x="1216" y="1440" name="a2" orien="R270" />
        <branch name="b2">
            <wire x2="1280" y1="1440" y2="1472" x1="1280" />
        </branch>
        <iomarker fontsize="28" x="1280" y="1440" name="b2" orien="R270" />
        <branch name="s2">
            <wire x2="1280" y1="1856" y2="1888" x1="1280" />
        </branch>
        <iomarker fontsize="28" x="1280" y="1888" name="s2" orien="R90" />
        <branch name="a1">
            <wire x2="1696" y1="1440" y2="1472" x1="1696" />
        </branch>
        <iomarker fontsize="28" x="1696" y="1440" name="a1" orien="R270" />
        <branch name="b1">
            <wire x2="1760" y1="1440" y2="1472" x1="1760" />
        </branch>
        <iomarker fontsize="28" x="1760" y="1440" name="b1" orien="R270" />
        <branch name="s1">
            <wire x2="1760" y1="1856" y2="1888" x1="1760" />
        </branch>
        <iomarker fontsize="28" x="1760" y="1888" name="s1" orien="R90" />
        <branch name="s0">
            <wire x2="2224" y1="1856" y2="1888" x1="2224" />
        </branch>
        <iomarker fontsize="28" x="2224" y="1888" name="s0" orien="R90" />
        <branch name="XLXN_15">
            <wire x2="2096" y1="1440" y2="1472" x1="2096" />
        </branch>
        <iomarker fontsize="28" x="2096" y="1440" name="XLXN_15" orien="R270" />
        <branch name="XLXN_16">
            <wire x2="2160" y1="1440" y2="1472" x1="2160" />
        </branch>
        <iomarker fontsize="28" x="2160" y="1440" name="XLXN_16" orien="R270" />
        <branch name="XLXN_17">
            <wire x2="2224" y1="1440" y2="1472" x1="2224" />
        </branch>
        <iomarker fontsize="28" x="2224" y="1440" name="XLXN_17" orien="R270" />
    </sheet>
</drawing>