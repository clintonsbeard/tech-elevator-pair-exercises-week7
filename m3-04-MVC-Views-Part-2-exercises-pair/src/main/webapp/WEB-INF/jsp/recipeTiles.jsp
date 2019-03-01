<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

	<c:import url="/WEB-INF/jsp/header.jsp">
	    <c:param name="pageTitle" value="Recipes (Tile View)" />
	</c:import>
	
   	<div id="flexbox">
		<c:forEach var="recipe" items="${recipes}">
			<div class="tile">
				<c:url var="recipeImg" value="/img/recipe${recipe.recipeId}.jpg" />
				<img src="${recipeImg}" class="tile-image">
				<c:url var="recipeDetailUrl" value="/recipeDetails">
					<c:param name="recipeId" value="${recipe.recipeId}" />
				</c:url>
				<div class="bold">
					<a href="${recipeDetailUrl}"><c:out value="${recipe.name}" /></a>
				</div>
				<div id="tile-star">
					<fmt:formatNumber var="rating" type ="number" maxFractionDigits="0" value="${recipe.averageRating}" />
					<c:url var="starRating" value="/img/${rating}-star.png" />
					<img src="${starRating}">
				</div>
					<c:set var="ingredients" value="${recipe.ingredients.size()} ingredients" />
				<div class="ingredients">
					<c:out value="${ingredients}" />
				</div>
			</div>
	    </c:forEach>
	</div>
	
<c:import url="/WEB-INF/jsp/footer.jsp" />