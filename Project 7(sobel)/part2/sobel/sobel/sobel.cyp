<!DOCTYPE AQUARIUM [
<!ELEMENT root (object , (backup , trash)?)>
<!ELEMENT object (properties, objects)?>
<!ELEMENT backup EMPTY>
<!ELEMENT trash (properties)?>
<!ATTLIST root
   version CDATA #REQUIRED
>
<!ATTLIST object
   type CDATA #REQUIRED
   name CDATA #REQUIRED
   path CDATA #IMPLIED
   ref (true|false) "false"
>
<!ELEMENT objects (object)*>
<!ELEMENT properties (property)*>
<!ELEMENT property EMPTY>
<!ATTLIST property
   name CDATA #REQUIRED
   type CDATA #REQUIRED
   value CDATA #REQUIRED
>
]>
<root version="6.1.5" >
  <object path="sobel" type="Project" name="sobel" >
    <properties>
      <property type="string" value="2018/03/22 02:10:29.000" name="FpgaTimeStamp" />
      <property type="string" value="ON" name="MergeSameMessage" />
      <property type="string" value="ON" name="ShowSrc" />
      <property type="string" value="W_BT1505,W_BT5651,W_BT5652,W_BT5655,W_BT5656,W_BT5659,W_BT5671,W_BT5672,W_BT5674,W_BT5675,W_BT5676,W_BT5677" name="StrongWarning" />
      <property type="string" value="FC31" name="bl::Pack" />
      <property type="string" value="5CSEMA5" name="bl::Part" />
      <property type="string" value="qts=&quot;/home/010/s/sx/sxc210186/intelFPGA_lite/22.1std/quartus/bin/&quot;" name="bl::SfSynDir" />
      <property type="string" value="-6" name="bl::Speed" />
      <property type="string" value="qts" name="bl::SynTool" />
      <property type="string" value="cycloneV" name="bl::Tech" />
      <property type="string" value="2023/11/04 16:37:31.000" name="bl::timestamp" />
      <property type="string" value="2023/11/04 16:35:27.000" name="bp::timestamp" />
      <property type="string" value="2000" name="bt::Clock" />
      <property type="string" value="1/100ns" name="bt::ClockUnitStr" />
      <property type="string" value="" name="bt::ControlDelay" />
      <property type="string" value="" name="bt::ControlDelayPer" />
      <property type="string" value="1" name="bt::ControlDelaySet" />
      <property type="string" value="/home/010/s/sx/sxc210186/Reconfig/Project_7.1/part2/part2 source_sobel_exploration/cycloneV.BLIB" name="bt::LibraryBlibFile" />
      <property type="string" value="/home/010/s/sx/sxc210186/Reconfig/Project_7.1/part2/part2 source_sobel_exploration/cycloneV.FLIB" name="bt::LibraryFlibFile" />
      <property type="string" value="2023/11/04 16:35:27.000" name="co::timestamp" />
      <property type="string" value="2023/11/04 16:35:27.000" name="cp::timestamp" />
      <property type="string" value="2023/11/04 16:35:27.000" name="created" />
      <property type="string" value="5CSEMA5" name="device" />
      <property type="string" value="cycloneV" name="family" />
      <property type="string" value="FC31" name="fl::Pack" />
      <property type="string" value="5CSEMA5" name="fl::Part" />
      <property type="string" value="qts=&quot;/home/010/s/sx/sxc210186/intelFPGA_lite/22.1std/quartus/bin/&quot;" name="fl::SfSynDir" />
      <property type="string" value="-6" name="fl::Speed" />
      <property type="string" value="qts" name="fl::SynTool" />
      <property type="string" value="cycloneV" name="fl::Tech" />
      <property type="string" value="2023/11/04 16:37:31.000" name="fl::timestamp" />
      <property type="string" value="" name="generateFileName" />
      <property type="string" value="bdlpars" name="lang" />
      <property type="string" value="2023/11/04 17:04:43.000" name="lastModified" />
      <property type="string" value="" name="librarySelect" />
      <property type="string" value="qts" name="logicSynthesizer" />
      <property type="string" value="2023/11/04 16:35:27.000" name="ls::timestamp" />
      <property type="string" value="FC31" name="package" />
      <property type="string" value="2023/11/04 16:35:27.000" name="pb::timestamp" />
      <property type="string" value="2023/11/04 16:35:27.000" name="pf::timestamp" />
      <property type="string" value="2023/11/04 16:35:27.000" name="rf::timestamp" />
      <property type="string" value="2023/11/04 16:35:27.000" name="sp::timestamp" />
      <property type="string" value="-6" name="speedGrade" />
      <property type="string" value="" name="synToolFollowBlib" />
      <property type="string" value="FPGA" name="targetDevice" />
    </properties>
    <objects>
      <object type="Source" name="src" >
        <properties>
          <property type="string" value="2023/11/04 16:35:27.000" name="bp::timestamp" />
          <property type="string" value="2023/11/04 16:35:27.000" name="cp::timestamp" />
          <property type="string" value="2023/11/04 16:35:27.000" name="sp::timestamp" />
        </properties>
        <objects>
          <object path="sobel.c" type="FileSource" name="sobel.c" >
            <properties>
              <property type="string" value="sobel" name="infobasename" />
              <property type="string" value="sobel.xml" name="outinfofilename" />
              <property type="int" value="0" name="IffCreateState" />
              <property type="string" value="2023/11/04 17:04:42.000" name="IffCreateStateTimestamp" />
              <property type="string" value="sobel.c.dir/sobel/sobel.IFF" name="OutputFileNames" />
              <property type="string" value="2023/11/04 17:04:42.000" name="lastBuilt" />
            </properties>
            <objects>
              <object path="sobel.c.dir/sobel/sobel.IFF" type="subitem" name="sobel" >
                <properties>
                  <property type="string" value="sobel" name="Process" />
                  <property type="string" value="Analyzed" name="State" />
                  <property type="string" value="2000" name="bt::Clock" />
                  <property type="string" value="2" name="bt::ClockResetSyncronizerNum" />
                  <property type="string" value="10" name="bt::ErrorWarningOptionFalseLoopMax" />
                  <property type="string" value="/home/010/s/sx/sxc210186/Reconfig/Project_7.1/part2/part2 source_sobel_exploration/cycloneV.BLIB" name="bt::LibraryBlibFile" />
                  <property type="string" value="sobel-auto.FCNT|sobel-amacro-auto.FCNT" name="bt::LibraryFcntFile" />
                  <property type="string" value="/home/010/s/sx/sxc210186/Reconfig/Project_7.1/part2/part2 source_sobel_exploration/cycloneV.FLIB|sobel-auto.FLIB|sobel-amacro-auto.FLIB" name="bt::LibraryFlibFile" />
                  <property type="string" value="sobel-auto.MCNT" name="bt::LibraryMcntFile" />
                  <property type="string" value="sobel-auto.MLIB" name="bt::LibraryMlibFile" />
                  <property type="string" value="2023/11/04 17:04:42.000" name="bt::timestamp" />
                  <property type="string" value="sobel_E.v" name="ls::AddFile" />
                  <property type="string" value="fpga" name="ls::FollowDevice" />
                  <property type="string" value="FC31" name="ls::FollowPack" />
                  <property type="string" value="5CSEMA5" name="ls::FollowPart" />
                  <property type="string" value="-6" name="ls::FollowSpeed" />
                  <property type="string" value="qts" name="ls::FollowSynTool" />
                  <property type="string" value="cycloneV" name="ls::FollowTech" />
                  <property type="string" value="2023/11/04 16:39:17.000" name="ls::timestamp" />
                  <property type="string" value="2023/11/04 16:39:17.000" name="vh::timestamp" />
                  <property type="string" value="2023/11/04 16:39:17.000" name="vl::timestamp" />
                </properties>
              </object>
            </objects>
          </object>
        </objects>
      </object>
      <object type="Include" name="include" />
      <object type="Testbench" name="testbench" />
      <object path="sobel.c.dir" type="Dir1" name="sobel.c.dir" >
        <objects>
          <object path="sobel" type="Process" name="sobel" >
            <properties>
              <property type="string" value="sobel.IFF" name="IFF" />
              <property type="int" value="0" name="IffCreateState" />
              <property type="string" value="2023/11/04 17:04:42.000" name="IffCreateStateTimestamp" />
              <property type="string" value="../../sobel.c" name="Related" />
            </properties>
            <objects>
              <object path="sobel.IFF" type="File3" name="sobel.IFF" >
                <properties>
                  <property type="int" value="1" name="extraInfo" />
                </properties>
              </object>
              <object path="_VerifyItems" type="PVerifyDir" name="Property Check" />
              <object path="sobel-amacro-auto.FLIB" type="File2" name="sobel-amacro-auto.FLIB" >
                <properties>
                  <property type="bool" value="1" name="using" />
                </properties>
              </object>
              <object path="sobel-auto.FLIB" type="File2" name="sobel-auto.FLIB" >
                <properties>
                  <property type="bool" value="1" name="using" />
                </properties>
              </object>
              <object path="sobel-auto.MLIB" type="File2" name="sobel-auto.MLIB" >
                <properties>
                  <property type="bool" value="1" name="using" />
                </properties>
              </object>
              <object path="sobel-amacro-auto.FCNT" type="File2" name="sobel-amacro-auto.FCNT" >
                <properties>
                  <property type="bool" value="1" name="using" />
                </properties>
              </object>
              <object path="sobel-auto.FCNT" type="File2" name="sobel-auto.FCNT" >
                <properties>
                  <property type="bool" value="1" name="using" />
                </properties>
              </object>
              <object path="sobel-auto.MCNT" type="File2" name="sobel-auto.MCNT" >
                <properties>
                  <property type="bool" value="1" name="using" />
                </properties>
              </object>
              <object path="sobel.LMSPEC" type="File4" name="sobel.LMSPEC" >
                <properties>
                  <property type="bool" value="1" name="grayout" />
                </properties>
              </object>
              <object path="sobel.CSV" type="File3" name="sobel.CSV" />
              <object path="sobel.LOG.gz" type="File3" name="sobel.LOG.gz" />
              <object path="sobel.QOR" type="File3" name="sobel.QOR" />
              <object path="sobel.QOR.HTML" type="File3" name="sobel.QOR.HTML" />
              <object path="sobel.SUMM" type="File3" name="sobel.SUMM" />
              <object path="sobel.err" type="File3" name="sobel.err" />
              <object path="sobel.tips" type="File3" name="sobel.tips" />
              <object path="sobel_9.BDL" type="File3" name="sobel_9.BDL" />
              <object path="sobel_9.IFF" type="File3" name="sobel_9.IFF" />
              <object path="sobel_C.BDL" type="File3" name="sobel_C.BDL" />
              <object path="sobel_C.IFF" type="File3" name="sobel_C.IFF" />
              <object path="sobel_E.BDL" type="File3" name="sobel_E.BDL" />
              <object path="sobel_E.IFF" type="File3" name="sobel_E.IFF" />
              <object path="sobel_pwr.csv" type="File3" name="sobel_pwr.csv" />
              <object path="sobel_E.v" type="File3" name="sobel_E.v" />
              <object path="sobel_E_IP.v" type="File3" name="sobel_E_IP.v" />
              <object path="sobel.SR" type="File3" name="sobel.SR" />
              <object path="sobel.VSG" type="File3" name="sobel.VSG" />
              <object path="sobel_C.xml" type="File3" name="sobel_C.xml" />
              <object path="sobel_E.v.LSInfo" type="File3" name="sobel_E.v.LSInfo" />
              <object path="sobel_E.v.scuba" type="File3" name="sobel_E.v.scuba" />
              <object path="sobel_E.vgerr" type="File3" name="sobel_E.vgerr" />
              <object path="sobel_hier.xml" type="File3" name="sobel_hier.xml" />
            </objects>
          </object>
        </objects>
      </object>
      <object path="sobel.dir" type="Dir1" name="sobel.dir" />
      <object path="logic_synthesis_work" type="Dir4" name="logic_synthesis_work" />
      <object path="simulation_work" type="Dir3" name="simulation_work" />
      <object type="ProjectTmp" name="Other files" >
        <objects>
          <object path="attrs0.h" type="File3" name="attrs0.h" />
          <object path="attrs1.h" type="File3" name="attrs1.h" />
          <object path="attrs10.h" type="File3" name="attrs10.h" />
          <object path="attrs100.h" type="File3" name="attrs100.h" />
          <object path="attrs101.h" type="File3" name="attrs101.h" />
          <object path="attrs102.h" type="File3" name="attrs102.h" />
          <object path="attrs103.h" type="File3" name="attrs103.h" />
          <object path="attrs104.h" type="File3" name="attrs104.h" />
          <object path="attrs105.h" type="File3" name="attrs105.h" />
          <object path="attrs106.h" type="File3" name="attrs106.h" />
          <object path="attrs107.h" type="File3" name="attrs107.h" />
          <object path="attrs108.h" type="File3" name="attrs108.h" />
          <object path="attrs109.h" type="File3" name="attrs109.h" />
          <object path="attrs11.h" type="File3" name="attrs11.h" />
          <object path="attrs110.h" type="File3" name="attrs110.h" />
          <object path="attrs111.h" type="File3" name="attrs111.h" />
          <object path="attrs112.h" type="File3" name="attrs112.h" />
          <object path="attrs113.h" type="File3" name="attrs113.h" />
          <object path="attrs114.h" type="File3" name="attrs114.h" />
          <object path="attrs115.h" type="File3" name="attrs115.h" />
          <object path="attrs116.h" type="File3" name="attrs116.h" />
          <object path="attrs117.h" type="File3" name="attrs117.h" />
          <object path="attrs118.h" type="File3" name="attrs118.h" />
          <object path="attrs119.h" type="File3" name="attrs119.h" />
          <object path="attrs12.h" type="File3" name="attrs12.h" />
          <object path="attrs120.h" type="File3" name="attrs120.h" />
          <object path="attrs121.h" type="File3" name="attrs121.h" />
          <object path="attrs122.h" type="File3" name="attrs122.h" />
          <object path="attrs123.h" type="File3" name="attrs123.h" />
          <object path="attrs124.h" type="File3" name="attrs124.h" />
          <object path="attrs125.h" type="File3" name="attrs125.h" />
          <object path="attrs126.h" type="File3" name="attrs126.h" />
          <object path="attrs127.h" type="File3" name="attrs127.h" />
          <object path="attrs128.h" type="File3" name="attrs128.h" />
          <object path="attrs129.h" type="File3" name="attrs129.h" />
          <object path="attrs13.h" type="File3" name="attrs13.h" />
          <object path="attrs130.h" type="File3" name="attrs130.h" />
          <object path="attrs131.h" type="File3" name="attrs131.h" />
          <object path="attrs132.h" type="File3" name="attrs132.h" />
          <object path="attrs133.h" type="File3" name="attrs133.h" />
          <object path="attrs134.h" type="File3" name="attrs134.h" />
          <object path="attrs135.h" type="File3" name="attrs135.h" />
          <object path="attrs136.h" type="File3" name="attrs136.h" />
          <object path="attrs137.h" type="File3" name="attrs137.h" />
          <object path="attrs138.h" type="File3" name="attrs138.h" />
          <object path="attrs139.h" type="File3" name="attrs139.h" />
          <object path="attrs14.h" type="File3" name="attrs14.h" />
          <object path="attrs140.h" type="File3" name="attrs140.h" />
          <object path="attrs141.h" type="File3" name="attrs141.h" />
          <object path="attrs142.h" type="File3" name="attrs142.h" />
          <object path="attrs143.h" type="File3" name="attrs143.h" />
          <object path="attrs144.h" type="File3" name="attrs144.h" />
          <object path="attrs145.h" type="File3" name="attrs145.h" />
          <object path="attrs146.h" type="File3" name="attrs146.h" />
          <object path="attrs147.h" type="File3" name="attrs147.h" />
          <object path="attrs148.h" type="File3" name="attrs148.h" />
          <object path="attrs149.h" type="File3" name="attrs149.h" />
          <object path="attrs15.h" type="File3" name="attrs15.h" />
          <object path="attrs150.h" type="File3" name="attrs150.h" />
          <object path="attrs151.h" type="File3" name="attrs151.h" />
          <object path="attrs152.h" type="File3" name="attrs152.h" />
          <object path="attrs153.h" type="File3" name="attrs153.h" />
          <object path="attrs154.h" type="File3" name="attrs154.h" />
          <object path="attrs155.h" type="File3" name="attrs155.h" />
          <object path="attrs156.h" type="File3" name="attrs156.h" />
          <object path="attrs157.h" type="File3" name="attrs157.h" />
          <object path="attrs158.h" type="File3" name="attrs158.h" />
          <object path="attrs159.h" type="File3" name="attrs159.h" />
          <object path="attrs16.h" type="File3" name="attrs16.h" />
          <object path="attrs160.h" type="File3" name="attrs160.h" />
          <object path="attrs161.h" type="File3" name="attrs161.h" />
          <object path="attrs162.h" type="File3" name="attrs162.h" />
          <object path="attrs163.h" type="File3" name="attrs163.h" />
          <object path="attrs164.h" type="File3" name="attrs164.h" />
          <object path="attrs165.h" type="File3" name="attrs165.h" />
          <object path="attrs166.h" type="File3" name="attrs166.h" />
          <object path="attrs167.h" type="File3" name="attrs167.h" />
          <object path="attrs168.h" type="File3" name="attrs168.h" />
          <object path="attrs169.h" type="File3" name="attrs169.h" />
          <object path="attrs17.h" type="File3" name="attrs17.h" />
          <object path="attrs170.h" type="File3" name="attrs170.h" />
          <object path="attrs171.h" type="File3" name="attrs171.h" />
          <object path="attrs172.h" type="File3" name="attrs172.h" />
          <object path="attrs173.h" type="File3" name="attrs173.h" />
          <object path="attrs174.h" type="File3" name="attrs174.h" />
          <object path="attrs175.h" type="File3" name="attrs175.h" />
          <object path="attrs176.h" type="File3" name="attrs176.h" />
          <object path="attrs177.h" type="File3" name="attrs177.h" />
          <object path="attrs178.h" type="File3" name="attrs178.h" />
          <object path="attrs179.h" type="File3" name="attrs179.h" />
          <object path="attrs18.h" type="File3" name="attrs18.h" />
          <object path="attrs180.h" type="File3" name="attrs180.h" />
          <object path="attrs181.h" type="File3" name="attrs181.h" />
          <object path="attrs182.h" type="File3" name="attrs182.h" />
          <object path="attrs183.h" type="File3" name="attrs183.h" />
          <object path="attrs184.h" type="File3" name="attrs184.h" />
          <object path="attrs185.h" type="File3" name="attrs185.h" />
          <object path="attrs186.h" type="File3" name="attrs186.h" />
          <object path="attrs187.h" type="File3" name="attrs187.h" />
          <object path="attrs188.h" type="File3" name="attrs188.h" />
          <object path="attrs189.h" type="File3" name="attrs189.h" />
          <object path="attrs19.h" type="File3" name="attrs19.h" />
          <object path="attrs190.h" type="File3" name="attrs190.h" />
          <object path="attrs191.h" type="File3" name="attrs191.h" />
          <object path="attrs2.h" type="File3" name="attrs2.h" />
          <object path="attrs20.h" type="File3" name="attrs20.h" />
          <object path="attrs21.h" type="File3" name="attrs21.h" />
          <object path="attrs22.h" type="File3" name="attrs22.h" />
          <object path="attrs23.h" type="File3" name="attrs23.h" />
          <object path="attrs24.h" type="File3" name="attrs24.h" />
          <object path="attrs25.h" type="File3" name="attrs25.h" />
          <object path="attrs26.h" type="File3" name="attrs26.h" />
          <object path="attrs27.h" type="File3" name="attrs27.h" />
          <object path="attrs28.h" type="File3" name="attrs28.h" />
          <object path="attrs29.h" type="File3" name="attrs29.h" />
          <object path="attrs3.h" type="File3" name="attrs3.h" />
          <object path="attrs30.h" type="File3" name="attrs30.h" />
          <object path="attrs31.h" type="File3" name="attrs31.h" />
          <object path="attrs32.h" type="File3" name="attrs32.h" />
          <object path="attrs33.h" type="File3" name="attrs33.h" />
          <object path="attrs34.h" type="File3" name="attrs34.h" />
          <object path="attrs35.h" type="File3" name="attrs35.h" />
          <object path="attrs36.h" type="File3" name="attrs36.h" />
          <object path="attrs37.h" type="File3" name="attrs37.h" />
          <object path="attrs38.h" type="File3" name="attrs38.h" />
          <object path="attrs39.h" type="File3" name="attrs39.h" />
          <object path="attrs4.h" type="File3" name="attrs4.h" />
          <object path="attrs40.h" type="File3" name="attrs40.h" />
          <object path="attrs41.h" type="File3" name="attrs41.h" />
          <object path="attrs42.h" type="File3" name="attrs42.h" />
          <object path="attrs43.h" type="File3" name="attrs43.h" />
          <object path="attrs44.h" type="File3" name="attrs44.h" />
          <object path="attrs45.h" type="File3" name="attrs45.h" />
          <object path="attrs46.h" type="File3" name="attrs46.h" />
          <object path="attrs47.h" type="File3" name="attrs47.h" />
          <object path="attrs48.h" type="File3" name="attrs48.h" />
          <object path="attrs49.h" type="File3" name="attrs49.h" />
          <object path="attrs5.h" type="File3" name="attrs5.h" />
          <object path="attrs50.h" type="File3" name="attrs50.h" />
          <object path="attrs51.h" type="File3" name="attrs51.h" />
          <object path="attrs52.h" type="File3" name="attrs52.h" />
          <object path="attrs53.h" type="File3" name="attrs53.h" />
          <object path="attrs54.h" type="File3" name="attrs54.h" />
          <object path="attrs55.h" type="File3" name="attrs55.h" />
          <object path="attrs56.h" type="File3" name="attrs56.h" />
          <object path="attrs57.h" type="File3" name="attrs57.h" />
          <object path="attrs58.h" type="File3" name="attrs58.h" />
          <object path="attrs59.h" type="File3" name="attrs59.h" />
          <object path="attrs6.h" type="File3" name="attrs6.h" />
          <object path="attrs60.h" type="File3" name="attrs60.h" />
          <object path="attrs61.h" type="File3" name="attrs61.h" />
          <object path="attrs62.h" type="File3" name="attrs62.h" />
          <object path="attrs63.h" type="File3" name="attrs63.h" />
          <object path="attrs64.h" type="File3" name="attrs64.h" />
          <object path="attrs65.h" type="File3" name="attrs65.h" />
          <object path="attrs66.h" type="File3" name="attrs66.h" />
          <object path="attrs67.h" type="File3" name="attrs67.h" />
          <object path="attrs68.h" type="File3" name="attrs68.h" />
          <object path="attrs69.h" type="File3" name="attrs69.h" />
          <object path="attrs7.h" type="File3" name="attrs7.h" />
          <object path="attrs70.h" type="File3" name="attrs70.h" />
          <object path="attrs71.h" type="File3" name="attrs71.h" />
          <object path="attrs72.h" type="File3" name="attrs72.h" />
          <object path="attrs73.h" type="File3" name="attrs73.h" />
          <object path="attrs74.h" type="File3" name="attrs74.h" />
          <object path="attrs75.h" type="File3" name="attrs75.h" />
          <object path="attrs76.h" type="File3" name="attrs76.h" />
          <object path="attrs77.h" type="File3" name="attrs77.h" />
          <object path="attrs78.h" type="File3" name="attrs78.h" />
          <object path="attrs79.h" type="File3" name="attrs79.h" />
          <object path="attrs8.h" type="File3" name="attrs8.h" />
          <object path="attrs80.h" type="File3" name="attrs80.h" />
          <object path="attrs81.h" type="File3" name="attrs81.h" />
          <object path="attrs82.h" type="File3" name="attrs82.h" />
          <object path="attrs83.h" type="File3" name="attrs83.h" />
          <object path="attrs84.h" type="File3" name="attrs84.h" />
          <object path="attrs85.h" type="File3" name="attrs85.h" />
          <object path="attrs86.h" type="File3" name="attrs86.h" />
          <object path="attrs87.h" type="File3" name="attrs87.h" />
          <object path="attrs88.h" type="File3" name="attrs88.h" />
          <object path="attrs89.h" type="File3" name="attrs89.h" />
          <object path="attrs9.h" type="File3" name="attrs9.h" />
          <object path="attrs90.h" type="File3" name="attrs90.h" />
          <object path="attrs91.h" type="File3" name="attrs91.h" />
          <object path="attrs92.h" type="File3" name="attrs92.h" />
          <object path="attrs93.h" type="File3" name="attrs93.h" />
          <object path="attrs94.h" type="File3" name="attrs94.h" />
          <object path="attrs95.h" type="File3" name="attrs95.h" />
          <object path="attrs96.h" type="File3" name="attrs96.h" />
          <object path="attrs97.h" type="File3" name="attrs97.h" />
          <object path="attrs98.h" type="File3" name="attrs98.h" />
          <object path="attrs99.h" type="File3" name="attrs99.h" />
          <object path="sobel.bperr" type="File3" name="sobel.bperr" />
          <object path="sobel.xml" type="File3" name="sobel.xml" />
        </objects>
      </object>
    </objects>
  </object>
</root>
