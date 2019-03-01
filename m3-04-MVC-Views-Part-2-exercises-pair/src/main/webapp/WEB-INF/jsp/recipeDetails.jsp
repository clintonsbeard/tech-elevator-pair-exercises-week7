<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

	<c:import url="/WEB-INF/jsp/header.jsp">
	    <c:param name="pageTitle" value="Recipes (Detail View)" />
	</c:import>
	
	<div class="detailContainer">
		<div class="detailImage">
			<c:url var="recipeImg" value="/img/recipe${recipe.recipeId}.jpg" />
			<img src="${recipeImg}" class="tile-image">
		</div>
		<div class="detailNameTypeTimeDesc">
		   	<div class="detailName">
		   		<c:out value="${recipe.name}" />
		   	</div>
		   	<div class="detailType">
		   		<c:out value="${recipe.recipeType}" />
		   	</div>
		   	<div class="detailTime">
		   		<p><strong>Cook Time</strong> ${recipe.cookTimeInMinutes} Minutes</p>
		   	</div>
		   	<div class="detailDesc">
		   		<c:out value="${recipe.description}" />
		   	</div>
	   	</div>
	   	<div class="detailIngredientsPrep">
	   		<h3>Ingredients</h3>
		   	<ul>
		   	<c:forEach var="ingredient" items="${recipe.ingredients}">
		   		<li style="list-style-type:disc;  margin-left:20px;">${ingredient.quantity} ${ingredient.name}</li>
		   	</c:forEach>
		   	</ul>
		   	<hr style="margin-top:20px;">
		   	<h3>Preparation</h3>
		   	<ol>
		   	<c:forEach var="step" items="${recipe.preparationSteps}">
		   		<li style="list-style-type:decimal;">${step}</li>
		   	</c:forEach>
		   	</ol>
	   	</div>
   	</div>
   	
<c:import url="/WEB-INF/jsp/footer.jsp" />