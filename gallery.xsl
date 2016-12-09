<?xml version='1.0'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template match="/">
<HTML>
<HEAD>
  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"/>
  <xsl:comment>(C) David Poirier 2008</xsl:comment>
  <title>Gallery</title>
  <link rel="stylesheet" href="fivesixseven.css" />
</HEAD>
<BODY>
  <xsl:for-each select="gallery/article">
    <xsl:apply-templates select="*"/>


<!--  <xsl:apply-templates select="date"/>
    <xsl:apply-templates select="text"/>
    <xsl:apply-templates select="pic"/>
    
!-->
    <hr />
  </xsl:for-each>
</BODY>
</HTML>
</xsl:template>

<xsl:template match="title">
	<h2><xsl:value-of select="." /></h2>
</xsl:template>

<xsl:template match="date">
  <h3><xsl:value-of select="." /></h3>
</xsl:template>		
	
<xsl:template match="pic">
  <xsl:element name="img">
	  <xsl:attribute name="src">
  		<xsl:value-of select="." />
		</xsl:attribute>
	  <xsl:attribute name="class">GalleryImage</xsl:attribute>   
	</xsl:element>
</xsl:template>		

<xsl:template match="text">
  <p><xsl:value-of select="." /></p>
</xsl:template>		

</xsl:stylesheet>

