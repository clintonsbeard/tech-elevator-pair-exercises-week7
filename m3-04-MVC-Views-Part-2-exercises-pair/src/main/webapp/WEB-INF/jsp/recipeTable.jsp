<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>

<html>
<head>
    <meta name="viewport" content="width=device-width" />
    <title>Recipe Table View</title>
    <link rel="stylesheet" href="css/site.css" />
</head>
<body>
    <header>
        <h1>MVC Exercises - Views Part 2: Models</h1>        
    </header>
    <nav>
        <ul>
            <li><a href="recipeTiles">Tile Layout</a></li>
            <li><a href="recipeTable">Table Layout</a></li>
        </ul> 
    </nav>
    <section id="main-content">
    	<h1>Recipes</h1>
    	<table id ="table">
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
    </section>
</body>
</html>