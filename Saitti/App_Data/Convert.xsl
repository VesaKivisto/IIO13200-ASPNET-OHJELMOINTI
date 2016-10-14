<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output version="1.0" method="xml" indent="yes" />
  <xsl:template match="tyontekijat">
    <xsl:element name="tyontekijat">
      <xsl:apply-templates/>
    </xsl:element>
  </xsl:template>

  <xsl:template match="tyontekija">
    <xsl:element name="tyontekija">
      <!--  convert elements to attributes -->
      <xsl:for-each select="*">
        <xsl:attribute name="{name()}">
          <xsl:value-of select="."/>
        </xsl:attribute>
      </xsl:for-each >
    </xsl:element>
  </xsl:template>
</xsl:stylesheet>
