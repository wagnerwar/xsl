<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="loja">
 <html>
 <body>
 <h1>LOJA</h1>
 <br/>
<xsl:apply-templates />
 </body>
</html>
</xsl:template>

<xsl:template match="categoria">
<h2> <xsl:apply-templates select="@id" />  - <xsl:apply-templates select="@description" /></h2>

<xsl:apply-templates />
</xsl:template>

<xsl:template match="produto">
  <p>
  <strong>Preco: <xsl:apply-templates select="preco"/></strong><br/>
  <strong>Descricao: <xsl:apply-templates select="descricao"/></strong>
  </p>
</xsl:template>


<xsl:template match="produto[1]">
  <p>
  <strong>Preco ultimo: <xsl:apply-templates select="preco"/></strong><br/>
  <strong>Descricao ultima: <xsl:apply-templates select="descricao"/></strong><br/>
  <a>
  <xsl:attribute name="href">detalhes_produto.asp?cod=<xsl:value-of select="@id" /></xsl:attribute><xsl:value-of select="descricao" />
  </a>
  <b>
   <xsl:if test="preco > 2">CARO!!</xsl:if>
   </b>
  </p>
</xsl:template>

</xsl:stylesheet>


