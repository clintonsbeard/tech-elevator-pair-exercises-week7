<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
				<div style="display:inline-block; background-color:#CCFFCC; position: relative; margin:10px; flex-shrink: 1;'">
					<c:set var="id" value="${recipe.recipeId}" />
					<c:choose>
						<c:when test="${id == 0}">
						<img src="img/recipe0.jpg" style="display:block; margin-left:auto; margin-right:auto; width:100%;"/>
						</c:when>
						<c:when test="${id == 1}">
						<img src="img/recipe1.jpg" style="display:block; margin-left:auto; margin-right:auto; width:100%;"/>
						</c:when>
						<c:when test="${id == 2}">
						<img src="img/recipe2.jpg" style="display:block; margin-left:auto; margin-right:auto; width:100%;"/>
						</c:when>
					</c:choose>
					<c:set var="name" value="${recipe.name}" />
					<h3 style="text-align:left; margin-left:10px; margin-bottom:60px;">${name}</h3>
					<c:set var="rating" value="${recipe.averageRating}" />
					<c:choose>
						<c:when test="${rating == 5.0}">
						<img src="img/5-star.png" style="max-height:25px; position:absolute; bottom:5px; left: 5px;" />
						</c:when>
						<c:when test="${rating >= 4.0}">
						<img src="img/4-star.png" style="max-height:25px; position:absolute; bottom:5px; left: 5px;" />
						</c:when>
						<c:when test="${rating >= 3.0}">
						<img src="img/3-star.png" style="max-height:25px; position:absolute; bottom:5px; left: 5px;" />
						</c:when>
						<c:when test="${rating >= 2.0}">
						<img src="img/2-star.png" style="max-height:25px; position:absolute; bottom:5px; left: 5px;" />
						</c:when>
						<c:otherwise>
						<img src="img/1-star.png" style="max-height:25px; position:absolute; bottom:5px; left: 5px;" />
						</c:otherwise>
					</c:choose>
					<c:set var="ingredients" value="${recipe.ingredients.size()} ingredients" />
					<div style="position:absolute; bottom:5px; right: 5px;">${ingredients}</div>
				</div>
		    </c:forEach>
		</div>
    </section>
</body>
</html>