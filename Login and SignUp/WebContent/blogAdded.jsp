<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import = " java.sql.* " %>
    
    <%@ page import = " com.database.Dao" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<body>
<%
String uid=(String)session.getAttribute("uid");
String blogContent=request.getParameter("blog");
Connection con=Dao.getDbConnection();
          String tableName="blog"+uid;
          PreparedStatement ps =con.prepareStatement("insert into "+tableName+" values(?,?)");
          ps.setString(1, "1");
          ps.setString(2, blogContent);
          
         ps.executeUpdate();
         
         out.println("blog added");
 %>
</body>
</html>