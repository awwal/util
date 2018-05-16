<%@ page import="java.util.*" %>
 


<%
    Enumeration in = request.getParameterNames();
    while(in.hasMoreElements()) {
     String paramName = in.nextElement().toString();
     out.println(paramName + " = " + request.getParameter(paramName)+"<br>");
    }
    for (Enumeration<String> enumeration = request.getAttributeNames(); enumeration.hasMoreElements();) {
        String attributeName = enumeration.nextElement();
        Object attribute = request.getAttribute(attributeName);
        out.println(attributeName + " -> " + attribute.getClass().getName() + ":" + attribute.toString()+"<br>");
        out.println("<br>");
    }
%>
