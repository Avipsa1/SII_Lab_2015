<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
  <h2>List of German Cities</h2>
    <table border="1">
      <tr bgcolor="#9acd32">
        <th style="text-align:left">City</th>
        <th style="text-align:left">Federal State</th>
        <th style="text-align:left">Population</th>
        <th style="text-align:left">Latitude</th>
        <th style="text-align:left">Longitude</th>
      </tr>
      <xsl:for-each select="citylist/city">
      <tr>
        <td><xsl:value-of select="name"/></td>
        <td><xsl:value-of select="state"/></td>
        <td><xsl:value-of select="population"/></td>
        <td><xsl:value-of select="latitude"/></td>
        <td><xsl:value-of select="longitude"/></td>
      </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>