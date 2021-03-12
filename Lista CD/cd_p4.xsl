<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1>Canciomes con menos de 200 segundos</h1>
                <table border="1">
                    <tr bgcolor="#A3FF33">
                        <th>Diso</th>
                        <th>Artista</th>
                        <th>Sello</th>
                        <th>Anio</th>
                        <th>Cancion</th>
                        <th>Duracion</th>
                    </tr>
                    <xsl:for-each select="listaCD/cd">
                        <xsl:variable name="titulo">
                            <xsl:value-of select="titulo" />
                        </xsl:variable>
                        <xsl:variable name="artista">
                            <xsl:value-of select="artista" />
                        </xsl:variable>
                        <xsl:variable name="sello">
                            <xsl:value-of select="sello" />
                        </xsl:variable>
                        <xsl:variable name="anio">
                            <xsl:value-of select="anio" />
                        </xsl:variable>
                        <xsl:for-each select="cancion">
                            <xsl:if test="@tiempo&lt;200">

                                <tr>
                                    <td>
                                        <xsl:value-of select="$titulo" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="$artista" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="$sello" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="$anio" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="." />
                                        <br></br>
                                    </td>

                                    <td>
                                        <xsl:value-of select="@tiempo" />
                                    </td>
                                </tr>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
