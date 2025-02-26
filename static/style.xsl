<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8" indent="yes"/>

  <xsl:template match="/rss/channel">
    <html>
      <head>
        <title><xsl:value-of select="title"/></title>
        <style>
          body { font-family: sans-serif; }
          h1 { border-bottom: 1px solid #ccc; }
          .item { margin-bottom: 20px; padding: 10px; border: 1px solid #eee; }
          .item-title { font-weight: bold; margin-bottom: 5px; }
          .item-date { font-size: 0.8em; color: #888; margin-bottom: 5px; }
        </style>
      </head>
      <body>
        <h1><xsl:value-of select="title"/></h1>
        <p><xsl:value-of select="description"/></p>

        <xsl:apply-templates select="item"/>

      </body>
    </html>
  </xsl:template>

  <xsl:template match="item">
    <div class="item">
      <div class="item-title">
        <a href="{link}"><xsl:value-of select="title"/></a>
      </div>
      <div class="item-date">
        <xsl:value-of select="pubDate"/>
      </div>
      <div class="item-description">
        <xsl:value-of select="description" disable-output-escaping="yes"/>
      </div>
    </div>
  </xsl:template>

</xsl:stylesheet>
