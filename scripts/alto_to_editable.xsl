<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xpath-default-namespace="http://www.loc.gov/standards/alto/ns-v2#"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:output indent="yes"/>
    <xsl:strip-space elements="*"/>

    <xsl:template match="/">
        <xsl:processing-instruction name="xml-stylesheet">href="https://raw.githubusercontent.com/sounding-spirit/ocr-correction/master/alto-style.css"</xsl:processing-instruction>
        <xsl:apply-templates select="node()|@*"/>
    </xsl:template>

    <xsl:template match="node()|@*">
        <xsl:copy>
            <xsl:apply-templates select="node()|@*"/>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="String">
        <xsl:copy>
            <xsl:apply-templates select="node()|@*"/>
            <xsl:value-of select="@CONTENT"/>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="SP">
        <xsl:copy>
            <xsl:apply-templates select="node()|@*"/>
            <xsl:text> </xsl:text>
        </xsl:copy>
    </xsl:template>

</xsl:stylesheet>
