<?xml version = "1.0" encoding = "utf-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl = "http://www.w3.org/1999/XSL/Transform"
xmlns="http://www.w3.org/1999/xhtml">

  <xsl:template match="vtu">
    <html>
      <head>
        <title>XML Page with XSL</title>
      </head>

      <body bgcolor="lightgreen">
        <center>
          <h2>VTU STUDENT INFORMATION</h2>
          <table border="1">
            <tr>
              <td>USN</td>
              <td>NAME</td>
              <td>COLLEGE</td>
              <td>BRANCH</td>
              <td>YEAR</td>
              <td>EMAIL</td>
            </tr>
            <xsl:for-each select="student-info">
              <tr>
                <td><xsl:value-of select="usn"/></td>
                <td><xsl:value-of select="name"/></td>
                <td><xsl:value-of select="college"/></td>
                <td><xsl:value-of select="branch"/></td>
                <td><xsl:value-of select="year"/></td>
                <td><xsl:value-of select="email"/></td>
              </tr>
            </xsl:for-each>
          </table>
        </center>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
