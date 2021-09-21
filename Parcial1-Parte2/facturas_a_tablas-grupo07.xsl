<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
  <html>
    <body>
      <h2>FACTURAS</h2> 
      <xsl:for-each select="//factura">
        <table border="2">
          <tr><th>Codigo</th><th>Detalle</th><th>Cantidad</th><th>Precio</th><th>Subtotal</th></tr>  
          <xsl:for-each select="//lineafactura">
            <tr>
              <td><xsl:value-of select="codigo"/></td>
              <td><xsl:value-of select="detalle"/></td>
              <td><xsl:value-of select="cantidad"/></td>
              <td><xsl:value-of select="precio/valor"/></td>
              <td><xsl:value-of select="subtotal/valor"/></td>
            </tr>
          </xsl:for-each>
          
        </table>  
      </xsl:for-each>
    </body>  
  </html>
  </xsl:template>
</xsl:stylesheet>
