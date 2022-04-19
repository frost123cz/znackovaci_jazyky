<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match = "/">

		<html>
			<body>
				<h1>Seznam Filmů/Seriálů</h1>
					<table border = "1">
					<tr bgcolor="#9acd32">
       					<th>Film/Seriál</th>
        				<th>Režisér</th>
       					<th>Scénář</th>
        				<th>Hodnocení</th>
       					<th>Rok vydání</th>
        				<th>Délka</th>
       					<th>Herci</th>
        				<th>Komentáře</th>
      				</tr>
					<xsl:for-each select = "seznam/druh/zanr/jmeno">
					 <xsl:sort select="@nazev" />
					   <xsl:if test="informace/rok_natoceni > 1990">
					   	<xsl:choose>
      					<xsl:when test="informace/rezije = 'George Lucas'">
						<tr bgcolor="blue">
							<th><xsl:value-of select = "@nazev"/></th>
							<th><xsl:value-of select = "informace/rezije"/></th>
							<th><xsl:value-of select = "informace/scenar"/></th>
							<th><xsl:value-of select = "informace/hodnoceni"/></th>
							<th><xsl:value-of select = "informace/rok_natoceni"/></th>
							<th><xsl:value-of select = "informace/delka"/></th>
							<th><xsl:value-of select = "herci"/></th>
							<th><xsl:value-of select = "komentare"/></th>
						</tr>
						</xsl:when>
						    <xsl:otherwise>
         					<tr>
								<th><xsl:value-of select = "@nazev"/></th>
								<th><xsl:value-of select = "informace/rezije"/></th>
								<th><xsl:value-of select = "informace/scenar"/></th>
								<th><xsl:value-of select = "informace/hodnoceni"/></th>
								<th><xsl:value-of select = "informace/rok_natoceni"/></th>
								<th><xsl:value-of select = "informace/delka"/></th>
								<th><xsl:value-of select = "herci"/></th>
								<th><xsl:value-of select = "komentare"/></th>
							</tr>
      					</xsl:otherwise>
      					</xsl:choose>
					  </xsl:if>
					</xsl:for-each>
				</table>
			</body>
		</html>

	</xsl:template>
</xsl:stylesheet>