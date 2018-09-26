<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.0">
<xsl:template match="description">
	<a href="{@xlink:href}">
		<xsl:value-of select="."/>
	</a>
</xsl:template>
<xsl:template match="/">
<html>
	<body>
		<h2>Bookstore</h2>
		<table border="1">
			<xsl:for-each select="bookstore/book">
			<tr>
				<td>
					<xsl:value-of select="@title"/>
				</td>
				<td>
					<xsl:apply-templates select="description"/>
				</td>
			</tr>
			</xsl:for-each>
		</table>
	</body>
</html>	
</xsl:template>
</xsl:transform>