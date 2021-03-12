<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
    <body>
    <h1>BOA Music</h1>
        <table>
        <tr bgcolor="#A3FF33">
            <th>Disco</th>
            <th>Canciones</th>
            <th>Duracion</th>
        </tr>
        <xsl:for-each select="listaCD/cd[sello='Crema Music']">
        <tr>
            <td><xsl:value-of select="titulo"/></td>
            <td><xsl:for-each select="cancion"><xsl:value-of select="."/><br/></xsl:for-each></td>
            <td><xsl:for-each select="cancion/@tiempo"><xsl:value-of select="."/><br/></xsl:for-each></td>
        </tr>
        </xsl:for-each>
        </table>
    </body>
    </html>
</xsl:template>
</xsl:stylesheet> 