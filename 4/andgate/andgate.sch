<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="a" />
        <signal name="b" />
        <signal name="x" />
        <port polarity="Input" name="a" />
        <port polarity="Input" name="b" />
        <port polarity="Output" name="x" />
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <block symbolname="and2" name="XLXI_1">
            <blockpin signalname="b" name="I0" />
            <blockpin signalname="a" name="I1" />
            <blockpin signalname="x" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1296" y="1344" name="XLXI_1" orien="R0" />
        <branch name="a">
            <wire x2="1296" y1="1216" y2="1216" x1="1264" />
        </branch>
        <iomarker fontsize="28" x="1264" y="1216" name="a" orien="R180" />
        <branch name="b">
            <wire x2="1296" y1="1280" y2="1280" x1="1264" />
        </branch>
        <iomarker fontsize="28" x="1264" y="1280" name="b" orien="R180" />
        <branch name="x">
            <wire x2="1584" y1="1248" y2="1248" x1="1552" />
        </branch>
        <iomarker fontsize="28" x="1584" y="1248" name="x" orien="R0" />
    </sheet>
</drawing>