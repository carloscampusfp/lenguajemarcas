<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <head>
        <title>Catálogo de Libros</title>
        <style>
          table {
            border-collapse: collapse;
            width: 100%;
            margin-top: 20px;
          }
          th, td {
            border: 1px solid black;
            padding: 8px;
            text-align: left;
          }
          th {
            background-color: #f2f2f2;
          }
          tr:nth-child(even) {
            background-color: #f9f9f9;
          }
          h1 {
            color: #333;
            text-align: center;
          }
        </style>
      </head>
      <body>
        <h1>Catálogo de Libros</h1>
        <table>
          <tr>
            <th>Título</th>
            <th>Autor</th>
            <th>Año</th>
            <th>Precio</th>
          </tr>
          <xsl:for-each select="catalogo/libro">
            <tr>
              <td><xsl:value-of select="titulo"/></td>
              <td><xsl:value-of select="autor"/></td>
              <td><xsl:value-of select="anio"/></td>
              <td>
                <xsl:value-of select="precio/@moneda"/>
                <xsl:text> </xsl:text>
                <xsl:value-of select="precio"/>
              </td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>