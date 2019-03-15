 <%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

    Calendar c = Calendar.getInstance();
   
    int dd = c.get(Calendar.DATE);
    int h = c.get(Calendar.HOUR_OF_DAY);
    int m = c.get(Calendar.MINUTE);
    int s = c.get(Calendar.SECOND);
   
    out.println("\nDate : "+dd+"\nTime : "+h+" : "+m+" : "+s);
   
    String path = request.getContextPath();
    out.println("\nPath : "+path);
   
    Cookie cookie = new Cookie("p", path);
    response.addCookie(cookie);
    out.println("\nCookie Added");
   
    out.println("\nConfig");
    out.println("\n"+config.getServletName());
   
    out.println("\nApplication : ");
    out.println("\n"+application.getServerInfo());
%>
