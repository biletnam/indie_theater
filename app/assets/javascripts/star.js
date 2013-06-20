var Star = (function(){
	
	var firstStar = $("#rating > .star-1");
	var secondStar = $("#rating > .star-2");
	var thirdStar = $("#rating > .star-3");
	var fourthStar = $("#rating > .star-4");
	
	var init = function(){
		console.log("init!");
		bind();
	}
	
	var bind = function(){
		firstStar.on("click", hello);
		secondStar.on("click", hello);
		thirdStar.on("click", hello);
		fourthStar.on("click", hello);
		console.log("bind!");
	}
	
	var hello = function(){
		console.log("A star!");
	}
	
	return {
		init: init
	}
})();