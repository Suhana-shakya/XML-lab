<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="xml" indent="yes"/>
<xsl:key name="products-by-category" match="product[quantity>=10]" use="category"/>
  <xsl:template match="/inventory">
    <root>
      <xsl:for-each select="product[quantity>=10][count(.|key('products-by-category',category)[1])=1]">
        <category name="{category}">
          <xsl:for-each select="key('products-by-category',category)">
            <xsl:sort select="price" data-type="number" order="descending"/>
            <product>
              <xsl:attribute name="productName">
                <xsl:value-of select="productName"/>
              </xsl:attribute>
              <category_label>
                <xsl:value-of select="category"/>
              </category_label>
              <price>
                <xsl:value-of select="price"/>
              </price>
              <quantity>
                <xsl:value-of select="quantity"/>
              </quantity>
              <total-price>
                <xsl:value-of select="price*quantity"/>
              </total-price>
            </product>
          </xsl:for-each>
        </category>
      </xsl:for-each>
    </root>
  </xsl:template>
</xsl:stylesheet>