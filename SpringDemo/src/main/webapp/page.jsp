<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" %>

<script type="text/javascript">
    function pageClick(pNo, name) {
        document.getElementById("search").action="/search"+"?pageNo="+pNo;
        document.getElementById("search").submit();
    }
</script>

<head>
    <body>
        <table  border="1" width="50%" align="center">
            <tr align="center">
                <th>Id</th>
                <th>姓名</th>
                <th>年龄</th>
                <th>邮箱</th>
            </tr>
            <c:if test="${!empty users }">
            <c:forEach items="${users }" var="u">
            <tr>
                <td>${u.id }</td>
                <td>${u.name}</td>
                <td>${u.age }</td>
                <td>${u.email }</td>
            </tr>
        </c:forEach>
        </c:if>
        </tr>
        </table>
        </br></br>

        <form action="" method="post" id="search">
            <div align="center">
                
                <c:forTokens items="${page.pageNoDisp}" delims="|" var="pNo">  
                <c:choose>  
                  <c:when test="${pNo == 0}">  
                    <label style="font-size: 10px; width: 20px; text-align: center;">•••</label>  
                  </c:when>  
                  <c:when test="${pNo != page.pageNo}">  
                    <button onclick="pageClick(${pNo})">${pNo}</button>
                  </c:when>  
                  <c:otherwise>  
                    <button style="font-weight:bold;">${pNo}</button>  
                  </c:otherwise>  
                </c:choose>  
                </c:forTokens>  
            </div>
            <input type="hidden" name="name" value="${name }">
        </form>
    </body>
</head>
  

  