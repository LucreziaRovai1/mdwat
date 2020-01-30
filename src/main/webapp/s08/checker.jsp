<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>JSP &amp; request</title>
</head>
<body>
    <h1>Hello!</h1>
    <p id="result">
        The user name
        <%
            @SuppressWarnings("unchecked")//impedisce a Java di fare problemi col downcast alla riga 15, da object a set
            Set<Character> set = (Set<Character>) request.getAttribute("set");
            if (set == null || set.isEmpty()) {
                out.print("is empty");//out. significa che vado a scrivere nella response
            } else {
                out.print("contains these letters:");

                Iterator<Character> it = set.iterator();//dammi un iteratore
                while (it.hasNext()) {
                    out.print(" " + it.next());//it.next sposta in avanti l'iteratore
                }
            }
        %>
    </p>
</body>
</html>