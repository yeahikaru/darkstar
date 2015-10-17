<xsl:transform version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" omit-xml-declaration="yes" />
    <xsl:template match="config">
        <xsl:for-each select="option">
            <!-- TODO: upper -->
            <xsl:value-of select="name"/> = "<xsl:value-of select="name"/>" -- <xsl:value-of select="desc"/><xsl:text>&#x0A;</xsl:text>
        </xsl:for-each>
    </xsl:template>
</xsl:transform>
