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
  <object path="ave8" type="Project" name="ave8" >
    <properties>
      <property type="string" value="2023/10/16 22:34:35.000" name="created" />
      <property type="string" value="2023/10/16 22:34:35.000" name="lastModified" />
    </properties>
    <objects>
      <object type="ProjectTmp" name="Other files" />
      <object type="Testbench" name="testbench" />
      <object path="logic_synthesis_work" type="Dir4" name="logic_synthesis_work" />
      <object path="simulation_work" type="Dir3" name="simulation_work" />
      <object type="Include" name="include" />
      <object type="Source" name="src" />
    </objects>
  </object>
</root>
