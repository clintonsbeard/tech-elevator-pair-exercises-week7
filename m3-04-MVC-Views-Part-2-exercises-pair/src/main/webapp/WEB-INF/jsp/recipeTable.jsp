<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

	<c:import url="/WEB-INF/jsp/header.jsp">
	    <c:param name="pageTitle" value="Recipes (Table View)" />
	</c:import>
	
   	<table id="table">
		<tr>
			<td></td>
			<c:forEach var="recipe" items="${recipes}">
			<td class="image"><img src="img/recipe${recipe.recipeId}.jpg"/></td>
			</c:forEach>
		</tr>
		<tr>
			<td class="label">Name</td>
			<c:forEach var="recipe" items="${recipes}">
			<td class="gray">${recipe.name}</td>
			</c:forEach>
		</tr>
		<tr>
    		<td class="label">Type</td>
    		<c:forEach var="recipe" items="${recipes}">
			<td>${recipe.recipeType}</td>
			</c:forEach>
		</tr>
		<tr>
			<td class="label">Cook Time</td>
			<c:forEach var="recipe" items="${recipes}">
			<td class="gray">${recipe.cookTimeInMinutes} min</td>
			</c:forEach>
		</tr>
		<tr>
			<td class="label">Ingredients</td>
			<c:forEach var="recipe" items="${recipes}">
			<td>${recipe.ingredients.size()} ingredients</td>
			</c:forEach>
		</tr>
		<tr>
			<td class="label">Rating</td>
			<c:forEach var="recipe" items="${recipes}">
			<fmt:formatNumber var="rating" type ="number" maxFractionDigits="0" value="${recipe.averageRating}" />
			<td id="table-star"><img src="img/${rating}-star.png"></td>
			</c:forEach>
		</tr>
   	</table>
   	
<c:import url="/WEB-INF/jsp/footer.jsp" />