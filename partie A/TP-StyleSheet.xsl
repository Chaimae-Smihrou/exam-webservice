<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:template match="/">
    <html>
        <head>
            <title>TP XML</title>
        </head>
        <body>
            <h2>Relve :</h2>
                <table>
                    <tr>
                        <th>Rib</th>
                        <th>Date de releve</th>
                        <th>Solde</th>
                    </tr>
                    <xsl:for-each select="/releve">
                        <tr>
                            <td><xsl:value-of select="@rib" /></td>
                            <td><xsl:value-of select="@datereleve" /></td>
                            <td><xsl:value-of select="@solde" /></td>
                        </tr>
                    </xsl:for-each>
                </table>
            <xsl:for-each select="/releve/operations">
                <ul>
                    <li>Date Debut : <xsl:value-of select="dateDebut"></xsl:value-of></li>
                </ul>
            </xsl:for-each>
            <table>
                <tr>
                    <th>type</th>
                    <th>date</th>
                    <th>montant</th>
                    <th>description</th>
                </tr>
                <xsl:for-each select="/releve/operations/operation">
                    <tr>
                        <td><xsl:value-of select="@type" /></td>
                        <td><xsl:value-of select="@date" /></td>
                        <td><xsl:value-of select="@montant" /></td>
                        <td><xsl:value-of select="@description" /></td>
                    </tr>
                </xsl:for-each>
            </table>
            <xsl:for-each select="/releve/operations">
                <ul>
                    <li>Date Fin : <xsl:value-of select="dateFin"></xsl:value-of></li>
                </ul>
            </xsl:for-each>
            <ul>
                <li>les opérations de type CREDIT : <xsl:value-of select="count(releve/operations/operation)"></xsl:value-of></li>
                
            </ul>
        </body>
    </html>
    </xsl:template>
</xsl:stylesheet>