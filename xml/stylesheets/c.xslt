<xsl:transform version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text" omit-xml-declaration="yes" />
<xsl:template match="config">
#include &lt;string&gt;
    namespace config {
    <xsl:for-each select="option">
        static std::string <xsl:value-of select="name"/> = "<xsl:value-of select="name"/>"; //<xsl:value-of select="desc"/>
    </xsl:for-each>
    };
</xsl:template>
</xsl:transform>
