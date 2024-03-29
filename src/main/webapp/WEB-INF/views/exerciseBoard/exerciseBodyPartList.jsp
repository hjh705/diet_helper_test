<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<jsp:include page="/WEB-INF/views/common/header.jsp"/>
<br><br><br>
    <body style="display: flex;
                flex-direction: column;
                flex: 1;
                width: 100%;
                height: 100%;
                -webkit-font-smoothing: antialiased;
                -moz-osx-font-smoothing: grayscale;">
    <div class="grid grid-cols-2 gap-4 justify-items-center">
        <a href="${pageContext.request.contextPath}/exercise/myScrapPage">
            <div class="mt-8 col-span-2 text-white w-full bg-pink-300 hover:bg-pink-400 focus:ring-4 focus:outline-none focus:ring-pink-300 font-medium rounded-lg text-5xl px-2 py-2.5 text-center"
                 style="width: 500px">
                스크랩
            </div>
        </a>

        <c:forEach items="${bodyParts}" var="bodypart" varStatus="vs">
            <a href="${pageContext.request.contextPath}/exercise/bodyPartDetail?id=${bodypart}">
                <div class="mt-8 text-white w-full bg-pink-300 hover:bg-pink-400 focus:ring-4 focus:outline-none focus:ring-pink-300 font-medium rounded-lg text-5xl px-2 py-2.5 text-center"
                     style="width: 500px">
                        ${bodypart}
                </div>
            </a>
        </c:forEach>
    </div>
    </body>
</html>

