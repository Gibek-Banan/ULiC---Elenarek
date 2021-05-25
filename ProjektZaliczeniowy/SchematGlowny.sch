<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="xbr" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk" />
        <signal name="XLXN_3" />
        <signal name="sw0" />
        <signal name="d_Stopwatch1" />
        <signal name="d_Stopwatch2" />
        <signal name="sw1" />
        <signal name="b0" />
        <signal name="b1" />
        <signal name="XLXN_30" />
        <signal name="XLXN_32" />
        <signal name="wy_sterowanie_kropka" />
        <signal name="wy_aktywna_anoda(3:0)" />
        <signal name="wy_transkoder_7s(6:0)" />
        <signal name="XLXN_49(3:0)" />
        <signal name="XLXN_50(3:0)" />
        <signal name="XLXN_51(3:0)" />
        <signal name="XLXN_53(3:0)" />
        <signal name="XLXN_54(3:0)" />
        <signal name="XLXN_55(3:0)" />
        <signal name="XLXN_56(3:0)" />
        <signal name="XLXN_57(3:0)" />
        <signal name="XLXN_58(3:0)" />
        <signal name="XLXN_59(3:0)" />
        <signal name="XLXN_60(3:0)" />
        <signal name="XLXN_61(1:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="sw0" />
        <port polarity="Output" name="d_Stopwatch1" />
        <port polarity="Output" name="d_Stopwatch2" />
        <port polarity="Input" name="sw1" />
        <port polarity="Input" name="b0" />
        <port polarity="Input" name="b1" />
        <port polarity="Output" name="wy_sterowanie_kropka" />
        <port polarity="Output" name="wy_aktywna_anoda(3:0)" />
        <port polarity="Output" name="wy_transkoder_7s(6:0)" />
        <blockdef name="dzielnik_100kHz_na_400Hz">
            <timestamp>2021-5-12T7:0:0</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="licznik_cyfra">
            <timestamp>2021-5-12T7:0:20</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="aktywna_anoda">
            <timestamp>2021-5-25T6:32:43</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="moj_projekt">
            <timestamp>2021-5-25T6:31:47</timestamp>
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-272" y2="-272" x1="64" />
            <line x2="0" y1="-192" y2="-192" x1="64" />
            <line x2="0" y1="-112" y2="-112" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-384" height="448" />
        </blockdef>
        <blockdef name="mult_vec1">
            <timestamp>2021-5-12T7:0:47</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
        </blockdef>
        <blockdef name="transkoder_7s">
            <timestamp>2021-5-12T7:1:5</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="dzielnik_400Hz_na_10Hz">
            <timestamp>2021-5-12T7:0:11</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="moj_projekt_Diody">
            <timestamp>2021-5-12T7:27:32</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="ster_kropka">
            <timestamp>2021-5-12T7:0:55</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="moj_projekt_MUX">
            <timestamp>2021-5-12T11:27:42</timestamp>
            <rect width="304" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="368" y="-172" height="24" />
            <line x2="432" y1="-160" y2="-160" x1="368" />
        </blockdef>
        <block symbolname="dzielnik_100kHz_na_400Hz" name="XLXI_1">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="XLXN_3" name="wy" />
        </block>
        <block symbolname="licznik_cyfra" name="XLXI_2">
            <blockpin signalname="XLXN_3" name="clk" />
            <blockpin signalname="XLXN_61(1:0)" name="wy(1:0)" />
        </block>
        <block symbolname="aktywna_anoda" name="XLXI_3">
            <blockpin signalname="XLXN_61(1:0)" name="we(1:0)" />
            <blockpin signalname="wy_aktywna_anoda(3:0)" name="wy(3:0)" />
        </block>
        <block symbolname="moj_projekt" name="XLXI_4">
            <blockpin signalname="XLXN_32" name="clk" />
            <blockpin signalname="sw0" name="sw0" />
            <blockpin signalname="sw1" name="sw1" />
            <blockpin signalname="b0" name="b0" />
            <blockpin signalname="b1" name="b1" />
            <blockpin signalname="XLXN_49(3:0)" name="wy_ds(3:0)" />
            <blockpin signalname="XLXN_50(3:0)" name="wy_s_j(3:0)" />
            <blockpin signalname="XLXN_51(3:0)" name="wy_s_dz(3:0)" />
            <blockpin signalname="XLXN_53(3:0)" name="wy_min(3:0)" />
        </block>
        <block symbolname="mult_vec1" name="XLXI_5">
            <blockpin signalname="XLXN_61(1:0)" name="we(1:0)" />
            <blockpin signalname="XLXN_49(3:0)" name="we1(3:0)" />
            <blockpin signalname="XLXN_50(3:0)" name="we2(3:0)" />
            <blockpin signalname="XLXN_51(3:0)" name="we3(3:0)" />
            <blockpin signalname="XLXN_53(3:0)" name="we4(3:0)" />
            <blockpin signalname="XLXN_59(3:0)" name="wy(3:0)" />
        </block>
        <block symbolname="dzielnik_400Hz_na_10Hz" name="XLXI_7">
            <blockpin signalname="XLXN_3" name="clk" />
            <blockpin signalname="XLXN_32" name="wy" />
        </block>
        <block symbolname="moj_projekt" name="XLXI_8">
            <blockpin signalname="XLXN_32" name="clk" />
            <blockpin signalname="XLXN_30" name="sw0" />
            <blockpin signalname="sw1" name="sw1" />
            <blockpin signalname="b0" name="b0" />
            <blockpin signalname="b1" name="b1" />
            <blockpin signalname="XLXN_54(3:0)" name="wy_ds(3:0)" />
            <blockpin signalname="XLXN_55(3:0)" name="wy_s_j(3:0)" />
            <blockpin signalname="XLXN_56(3:0)" name="wy_s_dz(3:0)" />
            <blockpin signalname="XLXN_57(3:0)" name="wy_min(3:0)" />
        </block>
        <block symbolname="moj_projekt_Diody" name="XLXI_9">
            <blockpin signalname="sw0" name="sw0" />
            <blockpin signalname="d_Stopwatch1" name="d_Stopwatch1" />
            <blockpin signalname="d_Stopwatch2" name="d_Stopwatch2" />
        </block>
        <block symbolname="inv" name="XLXI_10">
            <blockpin signalname="sw0" name="I" />
            <blockpin signalname="XLXN_30" name="O" />
        </block>
        <block symbolname="ster_kropka" name="XLXI_11">
            <blockpin signalname="XLXN_61(1:0)" name="we(1:0)" />
            <blockpin signalname="wy_sterowanie_kropka" name="wy" />
        </block>
        <block symbolname="transkoder_7s" name="XLXI_15">
            <blockpin signalname="XLXN_60(3:0)" name="we(3:0)" />
            <blockpin signalname="wy_transkoder_7s(6:0)" name="wy(6:0)" />
        </block>
        <block symbolname="mult_vec1" name="XLXI_16">
            <blockpin signalname="XLXN_61(1:0)" name="we(1:0)" />
            <blockpin signalname="XLXN_54(3:0)" name="we1(3:0)" />
            <blockpin signalname="XLXN_55(3:0)" name="we2(3:0)" />
            <blockpin signalname="XLXN_56(3:0)" name="we3(3:0)" />
            <blockpin signalname="XLXN_57(3:0)" name="we4(3:0)" />
            <blockpin signalname="XLXN_58(3:0)" name="wy(3:0)" />
        </block>
        <block symbolname="moj_projekt_MUX" name="XLXI_17">
            <blockpin signalname="sw0" name="sw0" />
            <blockpin signalname="XLXN_59(3:0)" name="we_Stopwatch1(3:0)" />
            <blockpin signalname="XLXN_58(3:0)" name="we_Stopwatch2(3:0)" />
            <blockpin signalname="XLXN_60(3:0)" name="wy(3:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="480" y="688" name="XLXI_1" orien="R0">
        </instance>
        <branch name="clk">
            <wire x2="480" y1="656" y2="656" x1="368" />
        </branch>
        <iomarker fontsize="28" x="368" y="656" name="clk" orien="R180" />
        <instance x="1104" y="688" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1680" y="672" name="XLXI_3" orien="R0">
        </instance>
        <instance x="192" y="992" name="XLXI_7" orien="R0">
        </instance>
        <branch name="XLXN_3">
            <wire x2="128" y1="864" y2="960" x1="128" />
            <wire x2="192" y1="960" y2="960" x1="128" />
            <wire x2="1008" y1="864" y2="864" x1="128" />
            <wire x2="1008" y1="656" y2="656" x1="864" />
            <wire x2="1104" y1="656" y2="656" x1="1008" />
            <wire x2="1008" y1="656" y2="864" x1="1008" />
        </branch>
        <iomarker fontsize="28" x="128" y="1040" name="sw0" orien="R180" />
        <branch name="d_Stopwatch1">
            <wire x2="448" y1="1328" y2="1328" x1="432" />
            <wire x2="512" y1="1328" y2="1328" x1="448" />
        </branch>
        <branch name="d_Stopwatch2">
            <wire x2="448" y1="1392" y2="1392" x1="432" />
            <wire x2="512" y1="1392" y2="1392" x1="448" />
        </branch>
        <iomarker fontsize="28" x="672" y="1120" name="sw1" orien="R180" />
        <branch name="b0">
            <wire x2="928" y1="1200" y2="1200" x1="672" />
            <wire x2="1232" y1="1200" y2="1200" x1="928" />
            <wire x2="928" y1="1184" y2="1184" x1="816" />
            <wire x2="928" y1="1184" y2="1200" x1="928" />
            <wire x2="816" y1="1184" y2="1760" x1="816" />
            <wire x2="1264" y1="1760" y2="1760" x1="816" />
        </branch>
        <iomarker fontsize="28" x="672" y="1200" name="b0" orien="R180" />
        <branch name="b1">
            <wire x2="944" y1="1280" y2="1280" x1="672" />
            <wire x2="1232" y1="1280" y2="1280" x1="944" />
            <wire x2="944" y1="1248" y2="1280" x1="944" />
            <wire x2="1216" y1="1248" y2="1248" x1="944" />
            <wire x2="1216" y1="1248" y2="1840" x1="1216" />
            <wire x2="1264" y1="1840" y2="1840" x1="1216" />
        </branch>
        <instance x="48" y="1424" name="XLXI_9" orien="R0">
        </instance>
        <iomarker fontsize="28" x="512" y="1328" name="d_Stopwatch1" orien="R0" />
        <iomarker fontsize="28" x="512" y="1392" name="d_Stopwatch2" orien="R0" />
        <instance x="1232" y="1312" name="XLXI_4" orien="R0">
        </instance>
        <branch name="XLXN_30">
            <wire x2="1136" y1="1600" y2="1600" x1="1120" />
            <wire x2="1248" y1="1600" y2="1600" x1="1136" />
            <wire x2="1264" y1="1600" y2="1600" x1="1248" />
        </branch>
        <branch name="XLXN_32">
            <wire x2="992" y1="960" y2="960" x1="576" />
            <wire x2="1232" y1="960" y2="960" x1="992" />
            <wire x2="992" y1="960" y2="1520" x1="992" />
            <wire x2="1264" y1="1520" y2="1520" x1="992" />
        </branch>
        <instance x="2208" y="1520" name="XLXI_11" orien="R0">
        </instance>
        <branch name="wy_sterowanie_kropka">
            <wire x2="2624" y1="1488" y2="1488" x1="2592" />
        </branch>
        <iomarker fontsize="28" x="2624" y="1488" name="wy_sterowanie_kropka" orien="R0" />
        <branch name="wy_aktywna_anoda(3:0)">
            <wire x2="2096" y1="640" y2="640" x1="2064" />
        </branch>
        <iomarker fontsize="28" x="2096" y="640" name="wy_aktywna_anoda(3:0)" orien="R0" />
        <instance x="2128" y="1216" name="XLXI_5" orien="R0">
        </instance>
        <branch name="sw0">
            <wire x2="256" y1="1232" y2="1232" x1="16" />
            <wire x2="16" y1="1232" y2="1280" x1="16" />
            <wire x2="16" y1="1280" y2="1328" x1="16" />
            <wire x2="48" y1="1328" y2="1328" x1="16" />
            <wire x2="256" y1="1040" y2="1040" x1="128" />
            <wire x2="720" y1="1040" y2="1040" x1="256" />
            <wire x2="1232" y1="1040" y2="1040" x1="720" />
            <wire x2="720" y1="1040" y2="1056" x1="720" />
            <wire x2="800" y1="1056" y2="1056" x1="720" />
            <wire x2="800" y1="1056" y2="1520" x1="800" />
            <wire x2="800" y1="1520" y2="1600" x1="800" />
            <wire x2="896" y1="1600" y2="1600" x1="800" />
            <wire x2="256" y1="1040" y2="1056" x1="256" />
            <wire x2="256" y1="1056" y2="1232" x1="256" />
            <wire x2="144" y1="784" y2="1056" x1="144" />
            <wire x2="256" y1="1056" y2="1056" x1="144" />
            <wire x2="2560" y1="784" y2="784" x1="144" />
            <wire x2="2560" y1="784" y2="1216" x1="2560" />
            <wire x2="2656" y1="1216" y2="1216" x1="2560" />
        </branch>
        <instance x="896" y="1632" name="XLXI_10" orien="R0" />
        <branch name="wy_transkoder_7s(6:0)">
            <wire x2="3392" y1="1040" y2="1040" x1="3296" />
        </branch>
        <instance x="1920" y="1904" name="XLXI_16" orien="R0">
        </instance>
        <instance x="2656" y="1376" name="XLXI_17" orien="R0">
        </instance>
        <iomarker fontsize="28" x="3392" y="1040" name="wy_transkoder_7s(6:0)" orien="R0" />
        <instance x="2912" y="1072" name="XLXI_15" orien="R0">
        </instance>
        <branch name="XLXN_49(3:0)">
            <wire x2="1872" y1="1088" y2="1088" x1="1616" />
            <wire x2="1872" y1="992" y2="1088" x1="1872" />
            <wire x2="2128" y1="992" y2="992" x1="1872" />
        </branch>
        <branch name="XLXN_50(3:0)">
            <wire x2="1888" y1="1152" y2="1152" x1="1616" />
            <wire x2="1888" y1="1056" y2="1152" x1="1888" />
            <wire x2="2128" y1="1056" y2="1056" x1="1888" />
        </branch>
        <branch name="XLXN_51(3:0)">
            <wire x2="1632" y1="1216" y2="1216" x1="1616" />
            <wire x2="2128" y1="1120" y2="1120" x1="1632" />
            <wire x2="1632" y1="1120" y2="1216" x1="1632" />
        </branch>
        <branch name="XLXN_53(3:0)">
            <wire x2="1872" y1="1280" y2="1280" x1="1616" />
            <wire x2="1872" y1="1184" y2="1280" x1="1872" />
            <wire x2="2128" y1="1184" y2="1184" x1="1872" />
        </branch>
        <branch name="XLXN_57(3:0)">
            <wire x2="1776" y1="1840" y2="1840" x1="1648" />
            <wire x2="1776" y1="1840" y2="1872" x1="1776" />
            <wire x2="1904" y1="1872" y2="1872" x1="1776" />
            <wire x2="1920" y1="1872" y2="1872" x1="1904" />
        </branch>
        <branch name="XLXN_58(3:0)">
            <wire x2="2608" y1="1616" y2="1616" x1="2304" />
            <wire x2="2608" y1="1344" y2="1616" x1="2608" />
            <wire x2="2656" y1="1344" y2="1344" x1="2608" />
        </branch>
        <branch name="XLXN_59(3:0)">
            <wire x2="2576" y1="928" y2="928" x1="2512" />
            <wire x2="2576" y1="928" y2="1280" x1="2576" />
            <wire x2="2656" y1="1280" y2="1280" x1="2576" />
        </branch>
        <branch name="XLXN_60(3:0)">
            <wire x2="2912" y1="1040" y2="1040" x1="2848" />
            <wire x2="2848" y1="1040" y2="1152" x1="2848" />
            <wire x2="3152" y1="1152" y2="1152" x1="2848" />
            <wire x2="3152" y1="1152" y2="1216" x1="3152" />
            <wire x2="3152" y1="1216" y2="1216" x1="3088" />
        </branch>
        <branch name="XLXN_61(1:0)">
            <wire x2="1568" y1="656" y2="656" x1="1488" />
            <wire x2="1584" y1="656" y2="656" x1="1568" />
            <wire x2="1568" y1="656" y2="752" x1="1568" />
            <wire x2="1728" y1="752" y2="752" x1="1568" />
            <wire x2="1728" y1="752" y2="928" x1="1728" />
            <wire x2="1728" y1="928" y2="1488" x1="1728" />
            <wire x2="2208" y1="1488" y2="1488" x1="1728" />
            <wire x2="1728" y1="1488" y2="1616" x1="1728" />
            <wire x2="1920" y1="1616" y2="1616" x1="1728" />
            <wire x2="2128" y1="928" y2="928" x1="1728" />
            <wire x2="1584" y1="640" y2="656" x1="1584" />
            <wire x2="1680" y1="640" y2="640" x1="1584" />
        </branch>
        <iomarker fontsize="28" x="672" y="1280" name="b1" orien="R180" />
        <branch name="XLXN_56(3:0)">
            <wire x2="1776" y1="1776" y2="1776" x1="1648" />
            <wire x2="1776" y1="1776" y2="1808" x1="1776" />
            <wire x2="1904" y1="1808" y2="1808" x1="1776" />
            <wire x2="1920" y1="1808" y2="1808" x1="1904" />
        </branch>
        <branch name="XLXN_55(3:0)">
            <wire x2="1776" y1="1712" y2="1712" x1="1648" />
            <wire x2="1776" y1="1712" y2="1744" x1="1776" />
            <wire x2="1904" y1="1744" y2="1744" x1="1776" />
            <wire x2="1920" y1="1744" y2="1744" x1="1904" />
        </branch>
        <branch name="XLXN_54(3:0)">
            <wire x2="1776" y1="1648" y2="1648" x1="1648" />
            <wire x2="1776" y1="1648" y2="1680" x1="1776" />
            <wire x2="1904" y1="1680" y2="1680" x1="1776" />
            <wire x2="1920" y1="1680" y2="1680" x1="1904" />
        </branch>
        <branch name="sw1">
            <wire x2="848" y1="1120" y2="1120" x1="672" />
            <wire x2="1232" y1="1120" y2="1120" x1="848" />
            <wire x2="848" y1="1120" y2="1680" x1="848" />
            <wire x2="1264" y1="1680" y2="1680" x1="848" />
        </branch>
        <instance x="1264" y="1872" name="XLXI_8" orien="R0">
        </instance>
    </sheet>
</drawing>