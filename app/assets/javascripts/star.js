var Star = (function(){
	
	var firstStar = $("#rating > .star-1");
	var secondStar = $("#rating > .star-2");
	var thirdStar = $("#rating > .star-3");
	var fourthStar = $("#rating > .star-4");
	
	var init = function(){
		bind();
	}
	
	var bind = function(){
		firstStar.on("click", first);
		secondStar.on("click", second);
		thirdStar.on("click", third);
		fourthStar.on("click", fourth);
	}
	
	var first = function(){
		firstStar.html('★');
		secondStar.html('☆');
		thirdStar.html('☆');
		fourthStar.html('☆');
	}
	
	var second = function(){
		firstStar.html('★');
		secondStar.html('★');
		thirdStar.html('☆');
		fourthStar.html('☆');
	}
	
	var third = function(){
		firstStar.html('★');
		secondStar.html('★');
		thirdStar.html('★');
		fourthStar.html('☆');
	}
	
	var fourth = function(){
		firstStar.html('★');
		secondStar.html('★');
		thirdStar.html('★');
		fourthStar.html('★');
	}
	
	return {
		init: init
	}
})();