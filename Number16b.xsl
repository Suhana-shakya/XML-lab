<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <inventory>
      <xsl:for-each select="product[quantity>=10][count(.|key"
    </inventory>
  </xsl:template>
</xsl:stylesheet>
