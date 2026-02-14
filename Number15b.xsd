<?xml version="1.0" encoding="UTF-8"?>
<xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema" elementFormDefault="qualified">
  <xs:element name="TU">
    <xs:complexType>
      <xs:sequence>
        <xs:element name="Employee">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="post">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:minLength value="5"/>
                    <xs:maxLength value="8"/>
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="salary">
                <xs:simpleType>
                  <xs:restriction base="xs:integer">
                    <xs:minInclusive value="25000"/>
                    <xs:maxInclusive value="50000"/>
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="gender">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:enumeration value="Male"/>
                    <xs:enumeration value="Female"/>
                    <xs:enumeration value="Others"/>
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="userName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:minLength value="8"/>
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="password">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:pattern value="[a-zA-Z].{7}"/>
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:sequence>
    </xs:complexType>
  </xs:element>
</xs:schema>
