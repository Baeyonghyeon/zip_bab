<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/remote.css">
    <style>
        .img-rounded {
            width: 180px;
            height: 140px;
        }

        a {
            color: black;
        }
    </style>
</head>
<body data-recipe-id="${r.memberRecipeId }" data-recipe-img="${r.completePicture }">
<div class="container">
    <h2>${r.title }</h2><br/>
    <c:if test="${sessionScope.loginId.memberId eq r.memberId}">
        <button type="button" class="btn btn-primary"
                onclick="location.href='${pageContext.request.contextPath }/memberrecipe/delete.do?memberRecipeId='+${r.memberRecipeId}">
            삭제하기
        </button>
        <button type="button" class="btn btn-primary"
                onclick="location.href='${pageContext.request.contextPath }/memberrecipe/edit.do?memberRecipeId='+${r.memberRecipeId}">
            수정하기
        </button>
    </c:if>
    <h3 id="ingredient"><span class="badge bg-secondary">🔘 재 료 목 록</span></h3>
    <div><c:forEach var="ingredient" items="${ingredient}">
        <c:if test="${not empty ingredient}">
            <h6>
                <p><strong>
                    <li>
                        <a href="${pageContext.request.contextPath}/recipe/getByIngredient.do?ingredient=${ingredient}">${ingredient}</a>
                    </li>
                </strong></p>
            </h6>
        </c:if>
    </c:forEach></div>
    <br/>
    <h3 id="calorie"><span class="badge bg-secondary">🔘 열 량</span></h3>
    <div>
        <h6><p><strong>${r.calorie } kcal</strong></p></h6>
    </div>
    <br/>
    <h3 id="manual"><span class="badge bg-secondary">🔘 조 리 방 법</span></h3>
    <div><img src="${pageContext.request.contextPath}/images/memberrecipe/${r.manual_img_01}" class="img-rounded"
              onerror="this.style.display='none'" alt=/"
              class="img-thumbnail" id="image-01">&emsp; ${r.manual_01}</div>
    <div><img src="${pageContext.request.contextPath}/images/memberrecipe/${r.manual_img_02}" class="img-rounded"
              onerror="this.style.display='none'" alt=/"
              class="img-thumbnail" id="image-02">&emsp; ${r.manual_02}</div>
    <div><img src="${pageContext.request.contextPath}/images/memberrecipe/${r.manual_img_03}" class="img-rounded"
              onerror="this.style.display='none'" alt=/"
              class="img-thumbnail" id="image-03">&emsp; ${r.manual_03}</div>
    <div><img src="${pageContext.request.contextPath}/images/memberrecipe/${r.manual_img_04}" class="img-rounded"
              onerror="this.style.display='none'" alt=/"
              class="img-thumbnail" id="image-04">&emsp; ${r.manual_04}</div>
    <div><img src="${pageContext.request.contextPath}/images/memberrecipe/${r.manual_img_05}" class="img-rounded"
              onerror="this.style.display='none'" alt=/"
              class="img-thumbnail" id="image-05">&emsp; ${r.manual_05}</div>
    <div><img src="${pageContext.request.contextPath}/images/memberrecipe/${r.manual_img_06}" class="img-rounded"
              onerror="this.style.display='none'" alt=/"
              class="img-thumbnail" id="image-06">&emsp; ${r.manual_06}</div>
    <br/>
    <h3 id="comPic"><span class="badge bg-secondary">🔘 완 성 사 진</span></h3>
    <div><img src="${pageContext.request.contextPath}/images/memberrecipe/${r.completePicture}" class="img-rounded"
              alt=/" style="width:500px; height:400px;"></div>
    <br/>

    <h3 id="review"><span class="badge bg-secondary">🔘 후 기</span></h3>

</div>

<%-- remote --%>
<div id="floatdiv" style="text-align:center;">
    <ul>
        <a href="#ingredient" style="background-color:pink;">재 료 목 록</a>
    </ul>
    <ul>
        <a href="#manual" style="background-color:pink;">조 리 방 법</a>
    </ul>
    <ul>
        <a href="#comPic" style="background-color:pink;">완 성 사 진</a>
    </ul>
    <ul>
        <a href='#review' style="background-color:pink;">후 기 보 기</a>
    </ul>
</div>

<%-- view history --%>
<div id="viewHistory">

</div>
<script src="${pageContext.request.contextPath}/recipe/js/detail_view_history.js"></script>
</body>
</html>