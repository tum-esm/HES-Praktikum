<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.6.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="1" fill="3" visible="no" active="no"/>
<layer number="3" name="Route3" color="4" fill="3" visible="no" active="no"/>
<layer number="4" name="Route4" color="1" fill="4" visible="no" active="no"/>
<layer number="5" name="Route5" color="4" fill="4" visible="no" active="no"/>
<layer number="6" name="Route6" color="1" fill="8" visible="no" active="no"/>
<layer number="7" name="Route7" color="4" fill="8" visible="no" active="no"/>
<layer number="8" name="Route8" color="1" fill="2" visible="no" active="no"/>
<layer number="9" name="Route9" color="4" fill="2" visible="no" active="no"/>
<layer number="10" name="Route10" color="1" fill="7" visible="no" active="no"/>
<layer number="11" name="Route11" color="4" fill="7" visible="no" active="no"/>
<layer number="12" name="Route12" color="1" fill="5" visible="no" active="no"/>
<layer number="13" name="Route13" color="4" fill="5" visible="no" active="no"/>
<layer number="14" name="Route14" color="1" fill="6" visible="no" active="no"/>
<layer number="15" name="Route15" color="4" fill="6" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="Senseair_Sunrise">
<packages>
<package name="XDCR_006-0-0002">
<circle x="-15.24" y="7.3" radius="0.1" width="0.2" layer="21"/>
<circle x="-15.24" y="7.3" radius="0.1" width="0.2" layer="51"/>
<text x="-13.14" y="10.67" size="1.27" layer="25">&gt;NAME</text>
<text x="-13.14" y="-11.95" size="1.27" layer="27">&gt;VALUE</text>
<wire x1="-17.04" y1="-5.08" x2="-16.5" y2="-5.08" width="0.127" layer="51"/>
<wire x1="-16.5" y1="-5.08" x2="-16.5" y2="-6.5" width="0.127" layer="51"/>
<wire x1="-16.5" y1="-6.5" x2="-13.025" y2="-6.5" width="0.127" layer="51"/>
<wire x1="-13.025" y1="-6.5" x2="-13.025" y2="-9.85" width="0.127" layer="51"/>
<wire x1="-13.025" y1="-9.85" x2="13.025" y2="-9.85" width="0.127" layer="51"/>
<wire x1="13.025" y1="-9.85" x2="13.025" y2="-4" width="0.127" layer="51"/>
<wire x1="16.5" y1="-4" x2="16.5" y2="6.5" width="0.127" layer="51"/>
<wire x1="16.5" y1="6.5" x2="13.025" y2="6.5" width="0.127" layer="51"/>
<wire x1="13.025" y1="6.5" x2="13.025" y2="9.85" width="0.127" layer="51"/>
<wire x1="13.025" y1="9.85" x2="-13.025" y2="9.85" width="0.127" layer="51"/>
<wire x1="-13.025" y1="9.85" x2="-13.025" y2="6.5" width="0.127" layer="51"/>
<wire x1="-13.025" y1="6.5" x2="-16.5" y2="6.5" width="0.127" layer="51"/>
<wire x1="-16.5" y1="6.5" x2="-16.5" y2="5.08" width="0.127" layer="51"/>
<wire x1="-16.5" y1="5.08" x2="-17.04" y2="5.08" width="0.127" layer="51"/>
<wire x1="-17.04" y1="5.08" x2="-17.04" y2="-5.08" width="0.127" layer="51"/>
<wire x1="16.5" y1="-4" x2="13.025" y2="-4" width="0.127" layer="51"/>
<wire x1="-17.04" y1="-5.08" x2="-16.5" y2="-5.08" width="0.127" layer="21"/>
<wire x1="-16.5" y1="-5.08" x2="-16.5" y2="-6.5" width="0.127" layer="21"/>
<wire x1="-16.5" y1="-6.5" x2="-13.025" y2="-6.5" width="0.127" layer="21"/>
<wire x1="-13.025" y1="-6.5" x2="-13.025" y2="-9.85" width="0.127" layer="21"/>
<wire x1="-13.025" y1="-9.85" x2="13.025" y2="-9.85" width="0.127" layer="21"/>
<wire x1="13.025" y1="-9.85" x2="13.025" y2="-4" width="0.127" layer="21"/>
<wire x1="16.5" y1="-4" x2="16.5" y2="6.5" width="0.127" layer="21"/>
<wire x1="16.5" y1="6.5" x2="13.025" y2="6.5" width="0.127" layer="21"/>
<wire x1="13.025" y1="6.5" x2="13.025" y2="9.85" width="0.127" layer="21"/>
<wire x1="13.025" y1="9.85" x2="-13.025" y2="9.85" width="0.127" layer="21"/>
<wire x1="-13.025" y1="9.85" x2="-13.025" y2="6.5" width="0.127" layer="21"/>
<wire x1="-13.025" y1="6.5" x2="-16.5" y2="6.5" width="0.127" layer="21"/>
<wire x1="-16.5" y1="6.5" x2="-16.5" y2="5.08" width="0.127" layer="21"/>
<wire x1="-16.5" y1="5.08" x2="-17.04" y2="5.08" width="0.127" layer="21"/>
<wire x1="-17.04" y1="5.08" x2="-17.04" y2="-5.08" width="0.127" layer="21"/>
<wire x1="16.5" y1="-4" x2="13.025" y2="-4" width="0.127" layer="21"/>
<wire x1="-17.29" y1="-6.75" x2="-17.29" y2="6.75" width="0.05" layer="39"/>
<wire x1="-17.29" y1="6.75" x2="-13.28" y2="6.75" width="0.05" layer="39"/>
<wire x1="-13.28" y1="6.75" x2="-13.28" y2="10.1" width="0.05" layer="39"/>
<wire x1="-13.28" y1="10.1" x2="13.275" y2="10.1" width="0.05" layer="39"/>
<wire x1="13.275" y1="10.1" x2="13.275" y2="6.75" width="0.05" layer="39"/>
<wire x1="13.275" y1="6.75" x2="16.75" y2="6.75" width="0.05" layer="39"/>
<wire x1="16.75" y1="6.75" x2="16.75" y2="-4.25" width="0.05" layer="39"/>
<wire x1="16.75" y1="-4.25" x2="13.275" y2="-4.25" width="0.05" layer="39"/>
<wire x1="13.275" y1="-4.25" x2="13.275" y2="-10.1" width="0.05" layer="39"/>
<wire x1="13.275" y1="-10.1" x2="-13.28" y2="-10.1" width="0.05" layer="39"/>
<wire x1="-13.28" y1="-10.1" x2="-13.28" y2="-6.75" width="0.05" layer="39"/>
<wire x1="-13.28" y1="-6.75" x2="-17.29" y2="-6.75" width="0.05" layer="39"/>
<pad name="1" x="-15.24" y="5.08" drill="1.016" shape="square"/>
<pad name="2" x="-15.24" y="2.54" drill="1.016"/>
<pad name="3" x="-15.24" y="0" drill="1.016"/>
<pad name="4" x="-15.24" y="-2.54" drill="1.016"/>
<pad name="5" x="-15.24" y="-5.08" drill="1.016"/>
<pad name="6" x="15.24" y="-2.54" drill="1.016"/>
<pad name="7" x="15.24" y="0" drill="1.016"/>
<pad name="8" x="15.24" y="2.54" drill="1.016"/>
<pad name="9" x="15.24" y="5.08" drill="1.016"/>
</package>
</packages>
<symbols>
<symbol name="006-0-0002">
<wire x1="-15.24" y1="12.7" x2="12.7" y2="12.7" width="0.254" layer="94"/>
<wire x1="12.7" y1="12.7" x2="12.7" y2="-10.16" width="0.254" layer="94"/>
<wire x1="12.7" y1="-10.16" x2="-15.24" y2="-10.16" width="0.254" layer="94"/>
<wire x1="-15.24" y1="-10.16" x2="-15.24" y2="12.7" width="0.254" layer="94"/>
<text x="-15.24" y="13.462" size="1.778" layer="95">&gt;NAME</text>
<text x="-15.24" y="-12.7" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="17.78" y="-7.62" length="middle" direction="pwr" rot="R180"/>
<pin name="VBB" x="17.78" y="10.16" length="middle" direction="pwr" rot="R180"/>
<pin name="VDDIO" x="17.78" y="7.62" length="middle" direction="pwr" rot="R180"/>
<pin name="RXD/SDA" x="-20.32" y="5.08" length="middle"/>
<pin name="TXD/SCL" x="-20.32" y="2.54" length="middle" function="clk"/>
<pin name="COMSEL" x="-20.32" y="-2.54" length="middle" direction="in"/>
<pin name="!RDY!" x="17.78" y="-2.54" length="middle" direction="out" rot="R180"/>
<pin name="DVCC" x="17.78" y="5.08" length="middle" direction="pwr" rot="R180"/>
<pin name="EN" x="-20.32" y="-5.08" length="middle" direction="in"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="006-0-0002" prefix="A">
<description> &lt;a href="https://pricing.snapeda.com/parts/006-0-0002/Senseair%20North%20America%20Inc./view-part?ref=eda"&gt;Check availability&lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="006-0-0002" x="0" y="0"/>
</gates>
<devices>
<device name="" package="XDCR_006-0-0002">
<connects>
<connect gate="G$1" pin="!RDY!" pad="7"/>
<connect gate="G$1" pin="COMSEL" pad="6"/>
<connect gate="G$1" pin="DVCC" pad="8"/>
<connect gate="G$1" pin="EN" pad="9"/>
<connect gate="G$1" pin="GND" pad="1"/>
<connect gate="G$1" pin="RXD/SDA" pad="4"/>
<connect gate="G$1" pin="TXD/SCL" pad="5"/>
<connect gate="G$1" pin="VBB" pad="2"/>
<connect gate="G$1" pin="VDDIO" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="AVAILABILITY" value="Not in stock"/>
<attribute name="CHECK_PRICES" value="https://www.snapeda.com/parts/006-0-0002/Senseair+North+America+Inc./view-part/?ref=eda"/>
<attribute name="DESCRIPTION" value="                                                      Carbon Dioxide (CO2) Sensor -                                              "/>
<attribute name="MF" value="Senseair North America Inc."/>
<attribute name="MP" value="006-0-0002"/>
<attribute name="PACKAGE" value="None"/>
<attribute name="PRICE" value="None"/>
<attribute name="SNAPEDA_LINK" value="https://www.snapeda.com/parts/006-0-0002/Senseair+North+America+Inc./view-part/?ref=snap"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply1" urn="urn:adsk.eagle:library:371">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
 GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
 Please keep in mind, that these devices are necessary for the
 automatic wiring of the supply signals.&lt;p&gt;
 The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
 In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="+3V3" urn="urn:adsk.eagle:symbol:26950/1" library_version="1">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<text x="-2.54" y="-5.08" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="+3V3" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
<symbol name="GND" urn="urn:adsk.eagle:symbol:26925/1" library_version="1">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="+3V3" urn="urn:adsk.eagle:component:26981/1" prefix="+3V3" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="+3V3" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="GND" urn="urn:adsk.eagle:component:26954/1" prefix="GND" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-lstb" urn="urn:adsk.eagle:library:162">
<description>&lt;b&gt;Pin Headers&lt;/b&gt;&lt;p&gt;
Naming:&lt;p&gt;
MA = male&lt;p&gt;
# contacts - # rows&lt;p&gt;
W = angled&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="MA06-1" urn="urn:adsk.eagle:footprint:8287/1" library_version="2">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-6.985" y1="1.27" x2="-5.715" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="1.27" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-0.635" x2="-5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.635" x2="-4.445" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="1.27" x2="-3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="1.27" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-0.635" x2="-3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-1.27" x2="-4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="-1.27" x2="-5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="0.635" x2="-7.62" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="1.27" x2="-7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="-0.635" x2="-6.985" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="-1.27" x2="-6.985" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.635" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-1.27" x2="-2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="4.445" y2="1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="1.27" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-0.635" x2="4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="-1.27" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.635" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="5.08" y1="0.635" x2="5.715" y2="1.27" width="0.1524" layer="21"/>
<wire x1="5.715" y1="1.27" x2="6.985" y2="1.27" width="0.1524" layer="21"/>
<wire x1="6.985" y1="1.27" x2="7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-0.635" x2="6.985" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="6.985" y1="-1.27" x2="5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="5.715" y1="-1.27" x2="5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="0.635" x2="7.62" y2="-0.635" width="0.1524" layer="21"/>
<pad name="1" x="-6.35" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="-3.81" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="-1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="5" x="3.81" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="6" x="6.35" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-7.62" y="1.651" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-6.985" y="-2.921" size="1.27" layer="21" ratio="10">1</text>
<text x="5.715" y="1.651" size="1.27" layer="21" ratio="10">6</text>
<text x="-2.54" y="-2.921" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-4.064" y1="-0.254" x2="-3.556" y2="0.254" layer="51"/>
<rectangle x1="-6.604" y1="-0.254" x2="-6.096" y2="0.254" layer="51"/>
<rectangle x1="-1.524" y1="-0.254" x2="-1.016" y2="0.254" layer="51"/>
<rectangle x1="3.556" y1="-0.254" x2="4.064" y2="0.254" layer="51"/>
<rectangle x1="1.016" y1="-0.254" x2="1.524" y2="0.254" layer="51"/>
<rectangle x1="6.096" y1="-0.254" x2="6.604" y2="0.254" layer="51"/>
</package>
</packages>
<packages3d>
<package3d name="MA06-1" urn="urn:adsk.eagle:package:8340/1" type="box" library_version="2">
<description>PIN HEADER</description>
<packageinstances>
<packageinstance name="MA06-1"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="MA06-1" urn="urn:adsk.eagle:symbol:8286/1" library_version="2">
<wire x1="3.81" y1="-10.16" x2="-1.27" y2="-10.16" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="2.54" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-5.08" x2="2.54" y2="-5.08" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-7.62" x2="2.54" y2="-7.62" width="0.6096" layer="94"/>
<wire x1="1.27" y1="2.54" x2="2.54" y2="2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.6096" layer="94"/>
<wire x1="1.27" y1="5.08" x2="2.54" y2="5.08" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="7.62" x2="-1.27" y2="-10.16" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-10.16" x2="3.81" y2="7.62" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="7.62" x2="3.81" y2="7.62" width="0.4064" layer="94"/>
<text x="-1.27" y="-12.7" size="1.778" layer="96">&gt;VALUE</text>
<text x="-1.27" y="8.382" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="7.62" y="-7.62" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="2" x="7.62" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="3" x="7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="4" x="7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="5" x="7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="6" x="7.62" y="5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MA06-1" urn="urn:adsk.eagle:component:8378/2" prefix="SV" uservalue="yes" library_version="2">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="MA06-1" x="0" y="0"/>
</gates>
<devices>
<device name="" package="MA06-1">
<connects>
<connect gate="1" pin="1" pad="1"/>
<connect gate="1" pin="2" pad="2"/>
<connect gate="1" pin="3" pad="3"/>
<connect gate="1" pin="4" pad="4"/>
<connect gate="1" pin="5" pad="5"/>
<connect gate="1" pin="6" pad="6"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:8340/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
<attribute name="POPULARITY" value="28" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="A2" library="Senseair_Sunrise" deviceset="006-0-0002" device="" override_package3d_urn="urn:adsk.eagle:package:47170938/2" override_package_urn="urn:adsk.eagle:footprint:47170939/1"/>
<part name="+3V4" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+3V3" device=""/>
<part name="GND4" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND5" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="+3V1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+3V3" device=""/>
<part name="GND1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="SV1" library="con-lstb" library_urn="urn:adsk.eagle:library:162" deviceset="MA06-1" device="" package3d_urn="urn:adsk.eagle:package:8340/1"/>
</parts>
<sheets>
<sheet>
<plain>
<text x="101.6" y="80.01" size="1.778" layer="97">Senseair Sunrise CO2 sensor
connected via I2C</text>
</plain>
<instances>
<instance part="A2" gate="G$1" x="116.84" y="50.165" smashed="yes">
<attribute name="NAME" x="101.6" y="63.627" size="1.778" layer="95"/>
<attribute name="VALUE" x="101.6" y="37.465" size="1.778" layer="96"/>
</instance>
<instance part="+3V4" gate="G$1" x="145.415" y="76.2" smashed="yes">
<attribute name="VALUE" x="142.875" y="71.12" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="GND4" gate="1" x="145.415" y="31.75" smashed="yes">
<attribute name="VALUE" x="142.875" y="29.21" size="1.778" layer="96"/>
</instance>
<instance part="GND5" gate="1" x="84.455" y="31.115" smashed="yes">
<attribute name="VALUE" x="81.915" y="28.575" size="1.778" layer="96"/>
</instance>
<instance part="+3V1" gate="G$1" x="186.055" y="111.76" smashed="yes">
<attribute name="VALUE" x="183.515" y="106.68" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="GND1" gate="1" x="198.755" y="72.39" smashed="yes">
<attribute name="VALUE" x="196.215" y="69.85" size="1.778" layer="96"/>
</instance>
<instance part="SV1" gate="1" x="226.06" y="88.9" smashed="yes" rot="R180">
<attribute name="VALUE" x="227.33" y="101.6" size="1.778" layer="96" rot="R180"/>
<attribute name="NAME" x="227.33" y="80.518" size="1.778" layer="95" rot="R180"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="GND" class="0">
<segment>
<pinref part="A2" gate="G$1" pin="GND"/>
<pinref part="GND4" gate="1" pin="GND"/>
<wire x1="134.62" y1="42.545" x2="145.415" y2="42.545" width="0.1524" layer="91"/>
<wire x1="145.415" y1="42.545" x2="145.415" y2="34.29" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND5" gate="1" pin="GND"/>
<pinref part="A2" gate="G$1" pin="COMSEL"/>
<wire x1="84.455" y1="33.655" x2="84.455" y2="47.625" width="0.1524" layer="91"/>
<wire x1="84.455" y1="47.625" x2="96.52" y2="47.625" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SV1" gate="1" pin="6"/>
<pinref part="GND1" gate="1" pin="GND"/>
<wire x1="218.44" y1="83.82" x2="198.755" y2="83.82" width="0.1524" layer="91"/>
<wire x1="198.755" y1="83.82" x2="198.755" y2="74.93" width="0.1524" layer="91"/>
</segment>
</net>
<net name="+3V3" class="0">
<segment>
<pinref part="A2" gate="G$1" pin="VBB"/>
<pinref part="+3V4" gate="G$1" pin="+3V3"/>
<wire x1="134.62" y1="60.325" x2="145.415" y2="60.325" width="0.1524" layer="91"/>
<wire x1="145.415" y1="60.325" x2="145.415" y2="73.66" width="0.1524" layer="91"/>
<pinref part="A2" gate="G$1" pin="VDDIO"/>
<wire x1="134.62" y1="57.785" x2="145.415" y2="57.785" width="0.1524" layer="91"/>
<wire x1="145.415" y1="57.785" x2="145.415" y2="60.325" width="0.1524" layer="91"/>
<junction x="145.415" y="60.325"/>
</segment>
<segment>
<pinref part="SV1" gate="1" pin="3"/>
<pinref part="+3V1" gate="G$1" pin="+3V3"/>
<wire x1="218.44" y1="91.44" x2="186.055" y2="91.44" width="0.1524" layer="91"/>
<wire x1="186.055" y1="91.44" x2="186.055" y2="109.22" width="0.1524" layer="91"/>
</segment>
</net>
<net name="SCL" class="0">
<segment>
<pinref part="A2" gate="G$1" pin="TXD/SCL"/>
<wire x1="96.52" y1="52.705" x2="86.36" y2="52.705" width="0.1524" layer="91"/>
<label x="81.28" y="52.07" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="218.44" y1="86.36" x2="203.2" y2="86.36" width="0.1524" layer="91"/>
<label x="195.58" y="86.36" size="1.778" layer="95"/>
<pinref part="SV1" gate="1" pin="5"/>
</segment>
</net>
<net name="SDA" class="0">
<segment>
<pinref part="A2" gate="G$1" pin="RXD/SDA"/>
<wire x1="96.52" y1="55.245" x2="86.36" y2="55.245" width="0.1524" layer="91"/>
<label x="81.28" y="54.61" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="218.44" y1="88.9" x2="203.2" y2="88.9" width="0.1524" layer="91"/>
<label x="195.58" y="88.9" size="1.778" layer="95"/>
<pinref part="SV1" gate="1" pin="4"/>
</segment>
</net>
<net name="CO2_RDY" class="0">
<segment>
<pinref part="A2" gate="G$1" pin="!RDY!"/>
<wire x1="134.62" y1="47.625" x2="145.415" y2="47.625" width="0.1524" layer="91"/>
<label x="146.05" y="46.99" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="SV1" gate="1" pin="1"/>
<wire x1="218.44" y1="96.52" x2="198.12" y2="96.52" width="0.1524" layer="91"/>
<label x="193.04" y="96.52" size="1.778" layer="95"/>
</segment>
</net>
<net name="CO2_EN" class="0">
<segment>
<pinref part="A2" gate="G$1" pin="EN"/>
<wire x1="96.52" y1="45.085" x2="90.17" y2="45.085" width="0.1524" layer="91"/>
<label x="86.36" y="40.64" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="218.44" y1="93.98" x2="198.12" y2="93.98" width="0.1524" layer="91"/>
<label x="193.04" y="93.98" size="1.778" layer="95"/>
<pinref part="SV1" gate="1" pin="2"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="6.3" minversion="6.2.2" severity="warning">
Since Version 6.2.2 text objects can contain more than one line,
which will not be processed correctly with this version.
</note>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports the association of 3D packages
with devices in libraries, schematics, and board files. Those 3D
packages will not be understood (or retained) with this version.
</note>
<note version="9.4" severity="warning">
Since Version 9.4, EAGLE supports the overriding of 3D packages
in schematics and board files. Those overridden 3d packages
will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>
