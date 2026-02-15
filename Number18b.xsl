<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="xml" indent="yes"/>
  <xsl:template match="/students">
    <students>
      <xsl:for-each select="student">
        <student reg_no="{reg_no}">
          <name><xsl:value-of select="name"/></name>
          <symbol_number><xsl:value-of select="symbol_number"/></symbol_number>
          <marks>
            <xsl:for-each select="marks/*">
              <subject name="{local-name()}">
                <xsl:value-of select="."/>
              </subject>
            </xsl:for-each>
          </marks>
          <xsl:variable name="total" select="sum(marks/*)"/>
          <total_marks><xsl:value-of select="$total"/></total_marks>
          <percentage><xsl:value-of select="$total div 5"/></percentage>
        </student>
      </xsl:for-each>
    </students>
  </xsl:template>
</xsl:stylesheet>
