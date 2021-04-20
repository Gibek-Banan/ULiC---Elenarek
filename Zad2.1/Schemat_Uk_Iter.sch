<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="xbr" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="p_wej1" />
        <signal name="p_wej2" />
        <signal name="a0" />
        <signal name="a1" />
        <signal name="a3" />
        <signal name="a2" />
        <signal name="XLXN_7" />
        <signal name="p_wyj1" />
        <signal name="p_wyj2" />
        <signal name="a7" />
        <signal name="a6" />
        <signal name="a4" />
        <signal name="a5" />
        <signal name="XLXN_15" />
        <signal name="XLXN_16" />
        <signal name="XLXN_17" />
        <signal name="XLXN_18" />
        <signal name="XLXN_19" />
        <signal name="XLXN_20" />
        <signal name="XLXN_21" />
        <signal name="XLXN_22" />
        <port polarity="Input" name="p_wej1" />
        <port polarity="Input" name="p_wej2" />
        <port polarity="Input" name="a0" />
        <port polarity="Input" name="a1" />
        <port polarity="Input" name="a3" />
        <port polarity="Input" name="a2" />
        <port polarity="Output" name="p_wyj1" />
        <port polarity="Output" name="p_wyj2" />
        <port polarity="Input" name="a7" />
        <port polarity="Input" name="a6" />
        <port polarity="Input" name="a4" />
        <port polarity="Input" name="a5" />
        <blockdef name="Kod_Blok_Iter">
            <timestamp>2021-4-11T17:2:23</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="Kod_Blok_Iter" name="XLXI_5">
            <blockpin signalname="a0" name="a" />
            <blockpin signalname="p_wej1" name="pin1" />
            <blockpin signalname="p_wej2" name="pin2" />
            <blockpin signalname="XLXN_1" name="pout1" />
            <blockpin signalname="XLXN_2" name="pout2" />
        </block>
        <block symbolname="Kod_Blok_Iter" name="XLXI_6">
            <blockpin signalname="a1" name="a" />
            <blockpin signalname="XLXN_1" name="pin1" />
            <blockpin signalname="XLXN_2" name="pin2" />
            <blockpin signalname="XLXN_3" name="pout1" />
            <blockpin signalname="XLXN_4" name="pout2" />
        </block>
        <block symbolname="Kod_Blok_Iter" name="XLXI_8">
            <blockpin signalname="a2" name="a" />
            <blockpin signalname="XLXN_3" name="pin1" />
            <blockpin signalname="XLXN_4" name="pin2" />
            <blockpin signalname="XLXN_5" name="pout1" />
            <blockpin signalname="XLXN_6" name="pout2" />
        </block>
        <block symbolname="Kod_Blok_Iter" name="XLXI_9">
            <blockpin signalname="a3" name="a" />
            <blockpin signalname="XLXN_5" name="pin1" />
            <blockpin signalname="XLXN_6" name="pin2" />
            <blockpin signalname="XLXN_21" name="pout1" />
            <blockpin signalname="XLXN_22" name="pout2" />
        </block>
        <block symbolname="Kod_Blok_Iter" name="XLXI_10">
            <blockpin signalname="a4" name="a" />
            <blockpin signalname="XLXN_21" name="pin1" />
            <blockpin signalname="XLXN_22" name="pin2" />
            <blockpin signalname="XLXN_15" name="pout1" />
            <blockpin signalname="XLXN_16" name="pout2" />
        </block>
        <block symbolname="Kod_Blok_Iter" name="XLXI_11">
            <blockpin signalname="a5" name="a" />
            <blockpin signalname="XLXN_15" name="pin1" />
            <blockpin signalname="XLXN_16" name="pin2" />
            <blockpin signalname="XLXN_17" name="pout1" />
            <blockpin signalname="XLXN_18" name="pout2" />
        </block>
        <block symbolname="Kod_Blok_Iter" name="XLXI_12">
            <blockpin signalname="a6" name="a" />
            <blockpin signalname="XLXN_17" name="pin1" />
            <blockpin signalname="XLXN_18" name="pin2" />
            <blockpin signalname="XLXN_19" name="pout1" />
            <blockpin signalname="XLXN_20" name="pout2" />
        </block>
        <block symbolname="Kod_Blok_Iter" name="XLXI_13">
            <blockpin signalname="a7" name="a" />
            <blockpin signalname="XLXN_19" name="pin1" />
            <blockpin signalname="XLXN_20" name="pin2" />
            <blockpin signalname="p_wyj1" name="pout1" />
            <blockpin signalname="p_wyj2" name="pout2" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="960" y="736" name="XLXI_5" orien="R0">
        </instance>
        <instance x="1664" y="720" name="XLXI_6" orien="R0">
        </instance>
        <instance x="976" y="1168" name="XLXI_8" orien="R0">
        </instance>
        <instance x="1696" y="1168" name="XLXI_9" orien="R0">
        </instance>
        <branch name="XLXN_1">
            <wire x2="1504" y1="576" y2="576" x1="1344" />
            <wire x2="1504" y1="576" y2="624" x1="1504" />
            <wire x2="1664" y1="624" y2="624" x1="1504" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="1504" y1="704" y2="704" x1="1344" />
            <wire x2="1504" y1="688" y2="704" x1="1504" />
            <wire x2="1664" y1="688" y2="688" x1="1504" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="976" y1="1072" y2="1072" x1="912" />
            <wire x2="912" y1="1072" y2="1232" x1="912" />
            <wire x2="2160" y1="1232" y2="1232" x1="912" />
            <wire x2="2160" y1="560" y2="560" x1="2048" />
            <wire x2="2160" y1="560" y2="1232" x1="2160" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="976" y1="1136" y2="1136" x1="896" />
            <wire x2="896" y1="1136" y2="1184" x1="896" />
            <wire x2="2128" y1="1184" y2="1184" x1="896" />
            <wire x2="2128" y1="688" y2="688" x1="2048" />
            <wire x2="2128" y1="688" y2="1184" x1="2128" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="1520" y1="1008" y2="1008" x1="1360" />
            <wire x2="1520" y1="1008" y2="1072" x1="1520" />
            <wire x2="1696" y1="1072" y2="1072" x1="1520" />
        </branch>
        <branch name="XLXN_6">
            <wire x2="1696" y1="1136" y2="1136" x1="1360" />
        </branch>
        <branch name="p_wej1">
            <wire x2="960" y1="640" y2="640" x1="880" />
        </branch>
        <branch name="p_wej2">
            <wire x2="960" y1="704" y2="704" x1="880" />
        </branch>
        <branch name="a0">
            <wire x2="960" y1="576" y2="576" x1="880" />
        </branch>
        <branch name="a1">
            <wire x2="1664" y1="560" y2="560" x1="1600" />
        </branch>
        <branch name="a3">
            <wire x2="1696" y1="1008" y2="1008" x1="1648" />
        </branch>
        <branch name="a2">
            <wire x2="976" y1="1008" y2="1008" x1="912" />
        </branch>
        <iomarker fontsize="28" x="880" y="576" name="a0" orien="R180" />
        <iomarker fontsize="28" x="880" y="640" name="p_wej1" orien="R180" />
        <iomarker fontsize="28" x="880" y="704" name="p_wej2" orien="R180" />
        <iomarker fontsize="28" x="1600" y="560" name="a1" orien="R180" />
        <iomarker fontsize="28" x="912" y="1008" name="a2" orien="R180" />
        <iomarker fontsize="28" x="1648" y="1008" name="a3" orien="R180" />
        <instance x="992" y="1600" name="XLXI_10" orien="R0">
        </instance>
        <instance x="1728" y="1600" name="XLXI_11" orien="R0">
        </instance>
        <instance x="992" y="2000" name="XLXI_12" orien="R0">
        </instance>
        <instance x="1728" y="1984" name="XLXI_13" orien="R0">
        </instance>
        <branch name="p_wyj1">
            <wire x2="2192" y1="1824" y2="1824" x1="2112" />
        </branch>
        <branch name="p_wyj2">
            <wire x2="2192" y1="1952" y2="1952" x1="2112" />
        </branch>
        <branch name="a7">
            <wire x2="1728" y1="1824" y2="1824" x1="1680" />
        </branch>
        <branch name="a6">
            <wire x2="912" y1="1840" y2="1840" x1="880" />
            <wire x2="992" y1="1840" y2="1840" x1="912" />
        </branch>
        <branch name="a4">
            <wire x2="992" y1="1440" y2="1440" x1="928" />
        </branch>
        <branch name="a5">
            <wire x2="1728" y1="1440" y2="1440" x1="1648" />
        </branch>
        <branch name="XLXN_15">
            <wire x2="1552" y1="1440" y2="1440" x1="1376" />
            <wire x2="1552" y1="1440" y2="1504" x1="1552" />
            <wire x2="1728" y1="1504" y2="1504" x1="1552" />
        </branch>
        <branch name="XLXN_16">
            <wire x2="1728" y1="1568" y2="1568" x1="1376" />
        </branch>
        <branch name="XLXN_17">
            <wire x2="928" y1="1728" y2="1904" x1="928" />
            <wire x2="992" y1="1904" y2="1904" x1="928" />
            <wire x2="2192" y1="1728" y2="1728" x1="928" />
            <wire x2="2192" y1="1440" y2="1440" x1="2112" />
            <wire x2="2192" y1="1440" y2="1728" x1="2192" />
        </branch>
        <branch name="XLXN_18">
            <wire x2="944" y1="1744" y2="1968" x1="944" />
            <wire x2="992" y1="1968" y2="1968" x1="944" />
            <wire x2="2176" y1="1744" y2="1744" x1="944" />
            <wire x2="2176" y1="1568" y2="1568" x1="2112" />
            <wire x2="2176" y1="1568" y2="1744" x1="2176" />
        </branch>
        <branch name="XLXN_19">
            <wire x2="1552" y1="1840" y2="1840" x1="1376" />
            <wire x2="1552" y1="1840" y2="1888" x1="1552" />
            <wire x2="1728" y1="1888" y2="1888" x1="1552" />
        </branch>
        <branch name="XLXN_20">
            <wire x2="1552" y1="1968" y2="1968" x1="1376" />
            <wire x2="1552" y1="1952" y2="1968" x1="1552" />
            <wire x2="1728" y1="1952" y2="1952" x1="1552" />
        </branch>
        <iomarker fontsize="28" x="880" y="1840" name="a6" orien="R180" />
        <iomarker fontsize="28" x="1648" y="1440" name="a5" orien="R180" />
        <iomarker fontsize="28" x="1680" y="1824" name="a7" orien="R180" />
        <iomarker fontsize="28" x="2192" y="1824" name="p_wyj1" orien="R0" />
        <iomarker fontsize="28" x="2192" y="1952" name="p_wyj2" orien="R0" />
        <iomarker fontsize="28" x="928" y="1440" name="a4" orien="R180" />
        <branch name="XLXN_21">
            <wire x2="976" y1="1344" y2="1504" x1="976" />
            <wire x2="992" y1="1504" y2="1504" x1="976" />
            <wire x2="2144" y1="1344" y2="1344" x1="976" />
            <wire x2="2144" y1="1008" y2="1008" x1="2080" />
            <wire x2="2144" y1="1008" y2="1344" x1="2144" />
        </branch>
        <branch name="XLXN_22">
            <wire x2="960" y1="1360" y2="1568" x1="960" />
            <wire x2="992" y1="1568" y2="1568" x1="960" />
            <wire x2="2112" y1="1360" y2="1360" x1="960" />
            <wire x2="2112" y1="1136" y2="1136" x1="2080" />
            <wire x2="2112" y1="1136" y2="1360" x1="2112" />
        </branch>
    </sheet>
</drawing>