<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/root">
    <html>
      <body>
          <table border="1">
              <tbody>
              <xsl:for-each select="departments/department">
                <xsl:variable name ="department_id" select = "@id"></xsl:variable>
                <tr>
                  <td colspan="5">
                    <xsl:value-of select="@name"/>
                  </td>
              </tr>
              <tr>
                <td>ID</td>
                <td>Имя</td>
                <td>Телефон</td>
                <td>E-mail</td>
                <td>Сумма часов</td>
              </tr>
                <xsl:for-each select="//users/user[@department = $department_id]">
                  <xsl:variable name ="user_id" select = "@id"></xsl:variable>
                  <tr>    
                    <td>
                      <xsl:value-of select="@id"/>
                    </td>
                    <td>
                      <xsl:value-of select="name"/>
                    </td>
                    <td>
                      <xsl:value-of select="phone"/>
                    </td>
                    <td>
                      <xsl:value-of select="email"/>
                    </td>
                    <td>
                    <xsl:for-each select = "//hours">
                      <xsl:value-of select="sum(//hours/hour[@user = $user_id]/@hours)"/>
                    </xsl:for-each>
                    </td>
                  </tr>
                </xsl:for-each>
              </xsl:for-each>
            </tbody>
          </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>