<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>

<html>
<head>
    <meta name="viewport" content="width=device-width" />
    <title>Recipe List View</title>
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
    	<div id="flexbox">
			<c:forEach var="recipe" items="${recipes}">
				<div class="tile">
					<img src="img/recipe${recipe.recipeId}.jpg" class="tile-image">
					<c:set var="name" value="${recipe.name}" />
					<div class="bold">${name}</div>
					<c:set var="rating" value="${recipe.averageRating}" />
					<fmt:formatNumber var="rating" type ="number" maxFractionDigits="0" value="${recipe.averageRating}" />
					<div id="tile-star"><img src="img/${rating}-star.png"></div>
					<c:set var="ingredients" value="${recipe.ingredients.size()} ingredients" />
					<div class="ingredients">${ingredients}</div>
				</div>
		    </c:forEach>
		</div>
    </section>
</body>
</html>