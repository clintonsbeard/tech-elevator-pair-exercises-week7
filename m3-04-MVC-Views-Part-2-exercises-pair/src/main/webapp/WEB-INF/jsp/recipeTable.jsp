<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
<%--     <c:choose>
    	<c:set var="rating" value="${recipe.averageRating}" />
    	<c:when>
    	
    	</c:when>
    </c:choose> --%>
    <section id="main-content">
    	<h1>Recipes</h1>
    	<div id="flexbox" style="width:100%;">
    		<div id="labels" style="margin-left:10px; margin-top:117px;">
			<ul>
	    		<li class="label">Name</li>
	    		<li class="label">Type</li>
	    		<li class="label">Cook Time</li>
	    		<li class="label">Ingredients</li>
	    		<li class="label">Rating</li>
    		</ul>
    		</div>
			<c:forEach var="recipe" items="${recipes}">
			<div>
				<ul>
					<c:set var="id" value="${recipe.recipeId}" />
					<c:choose>
						<c:when test="${id == 0}">
						<img src="img/recipe0.jpg" style="display:block; margin-left:auto; margin-right:auto; width:50%;"/>
						</c:when>
						<c:when test="${id == 1}">
						<img src="img/recipe1.jpg" style="display:block; margin-left:auto; margin-right:auto; width:50%;"/>
						</c:when>
						<c:when test="${id == 2}">
						<img src="img/recipe2.jpg" style="display:block; margin-left:auto; margin-right:auto; width:50%;"/>
						</c:when>
					</c:choose>
		    		<li style="background-color:#D3D3D3;">${recipe.name}</li>
		    		<li>${recipe.recipeType}</li>
		    		<li style="background-color:#D3D3D3;">${recipe.cookTimeInMinutes} min</li>
		    		<li>${recipe.ingredients.size()} ingredients</li>
		    		<c:set var="rating" value="${recipe.averageRating}" />
					<c:choose>
						<c:when test="${rating == 5.0}">
						<li style="background-color:#D3D3D3;"><img src="img/5-star.png" style="max-height:25px;" /></li>
						</c:when>
						<c:when test="${rating >= 4.0}">
						<li style="background-color:#D3D3D3;"><img src="img/4-star.png" style="max-height:25px;" /></li>
						</c:when>
						<c:when test="${rating >= 3.0}">
						<li style="background-color:#D3D3D3;"><img src="img/3-star.png" style="max-height:25px;" /></li>
						</c:when>
						<c:when test="${rating >= 2.0}">
						<li style="background-color:#D3D3D3;"><img src="img/2-star.png" style="max-height:25px;" /></li>
						</c:when>
						<c:otherwise>
						<li style="background-color:#D3D3D3;"><img src="img/1-star.png" style="max-height:25px;" /></li>
						</c:otherwise>
					</c:choose>
	    		</ul>
	    	</div>
	    	</c:forEach>
    	</div>
    </section>
</body>
</html>