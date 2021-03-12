<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1>Lista de CDs</h1>
                <table border="1">
                    <tr bgcolor="#A3FF33">
                        <th>Titulo</th>
                        <th>Artista</th>
                        <th>Canciones</th>
                        <th>Duracion</th>
                        <th>Sello</th>
                        <th>Fecha</th>
                    </tr>
                    <xsl:for-each select="listaCD/cd">
                        <tr>
                            <td>
                                <xsl:value-of select="titulo" />
                            </td>
                            <td>
                                <xsl:value-of select="artista" />
                            </td>
                            <td>
                                <xsl:for-each select="cancion">
                                    <xsl:value-of select="." />
                                    <br />
                                </xsl:for-each>
                            </td>
                            <td>
                                <xsl:for-each select="cancion/@tiempo">
                                    <xsl:value-of select="." />
                                    <br />
                                </xsl:for-each>
                            </td>
                            <td>
                                <xsl:value-of select="sello" />
                            </td>
                            <td>
                                <xsl:value-of select="anio" />
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet> 