<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <head>
        <style>
          table{
            width:100%;
            border-collapse:collapse;
            font-family:Aria;,sans-serif;
            text-align:center;
          }
          .main-header{
            background-color:green;
            color:white;
            font-weight:bold;
            padding:10px;
            font-size:20px;
          }
          .category-row{
            border:1px solid #ccc;
            padding:10px;
          }
          .category-title{
            color:green;
            font-weight:bold;
            font-size:16px;
            margin-top:5px;
          }
          .item-list{
            color:#cc6600;
            font-size:12px;
            font-weight:bold;
            margin-bottom:5px;
          }
        </style>
      </head>
      <body>
        <table>
          <tr>
            <td class="main-header"><xsl:value-of select="root/main_heading"/></td>
          </tr>
          <xsl:for-each select="root/category">
            <tr>
              <td class="category-row">
                <div class="category-title">
                  <xsl:value-of select="title"/>
                </div>
                <div class="item-list">
                  <xsl:for-each select="item">
                    <xsl:value-of select="."/><br/>
                  </xsl:for-each>
                </div>
              </td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>