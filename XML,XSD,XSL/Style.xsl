<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
  <html> 
  
<body>
    <h2>Seznam formulářu</h2>
        <table border="1">
        <tr bgcolor="cyan">
            <th style="text-align:left">Jmeno</th>
            <th style="text-align:left">Prijmeni</th>
            <th style="text-align:left">Titul</th>
            <th style="text-align:left">Datum narození</th>
            <th style="text-align:left">Rodné číslo</th>
            <th style="text-align:left">Národnost</th>
            <th style="text-align:left">Místo narození</th>
            <th style="text-align:left">Místo bydliště</th>                
            <th style="text-align:left">PSČ</th>
            <th style="text-align:left">telefon</th>
            <th style="text-align:left">e-mail</th>
            <th style="text-align:left">webová stránka</th>
            <th style="text-align:left">řidicský průkaz</th>                           
            <th style="text-align:left">Počet dětí</th>
            <th style="text-align:left">Počet aut</th>
            <th style="text-align:left">Vzdělání</th>
            <th style="text-align:left">Zaměstnání</th>
            <th style="text-align:left">Plat</th>
          </tr>
    <xsl:for-each select="formulare/formular">
    <xsl:sort select="prijmeni"/>
     <xsl:if test="plat &gt; 0">
    <tr>
      <td><xsl:value-of select="jmeno"/></td>
      <td><xsl:value-of select="prijmeni"/></td>
      <td><xsl:value-of select="titul"/></td>
      <td><xsl:value-of select="datum_narozeni"/></td>
      <td><xsl:value-of select="rodne_cislo"/></td>
      <td><xsl:value-of select="narodnost"/></td>
      <td><xsl:value-of select="misto_narozeni"/></td>
      <td><xsl:value-of select="misto_bydliste"/></td>
      <td><xsl:value-of select="PSC"/></td>
      <td><xsl:value-of select="telefon"/></td>
      <td><xsl:value-of select="e-mail"/></td>
      <td><xsl:value-of select="webova_stranka"/></td>
      <td><xsl:value-of select="ridicsky_prukaz"/></td>
      <td><xsl:value-of select="pocet_deti"/></td>
      <td><xsl:value-of select="pocet_aut"/></td>
      <td><xsl:value-of select="vzdelani"/></td>
      <td><xsl:value-of select="zamestnani"/></td>
      <xsl:choose>
        <xsl:when test="plat&lt;'20000'">
      <td bgcolor="red">
      <xsl:value-of select="plat"/></td>
      </xsl:when>
      <xsl:otherwise>
      <td><xsl:value-of select="plat"/></td>
      </xsl:otherwise>
      </xsl:choose>
    </tr>
    </xsl:if>
    </xsl:for-each>
  </table>
</body>
</html>
  
  </xsl:template>
</xsl:stylesheet>
