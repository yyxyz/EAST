<!-- Copyright (c) 2002 by ObjectLearn. All Rights Reserved. -->
<%@ page contentType="text/html; charset=gb2312" pageEncoding="gb2312"%>
<%@ page language="java" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>

<html>
	<head>
	  <html:base/>
	  <link rel="stylesheet" type="text/css" href="./extra/lib/themes/default/extra.css">
		<title>错误页面</title>
	</head>
	<body>	  
	  
	  <table align="center">
      <logic:messagesPresent message="true">
          <tr>
            <td class="errors">
              <ul>
                <html:messages message="true" id="error">
                  <li><bean:write name="error"/></li>
                </html:messages>
              </ul>
            </td>
          </tr>      
      </logic:messagesPresent>    
      
      <logic:notEmpty name="errormsg">
        <tr>
          <td class="errors">
            <bean:write name="errormsg"/>  
          </td>
        </tr>
      </logic:notEmpty>
      
      <tr><td align="center"><a href="javascript:history.back();">返回</a></td></tr>
      
    </table>
	</body>
</html>
