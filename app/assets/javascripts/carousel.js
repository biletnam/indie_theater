var Carousel = (function(){
	
	var delay = 6000;
	var carousel = $("#carousel");
	var itemsHolder = carousel.find("> ul");
	var items = itemsHolder.find("> li");
	var itemWidth = items.first().width();
	var currentItem = -1;
	var timerId;
	
  var firstButton = $("#carousel-nav > .first");
  var secondButton = $("#carousel-nav > .second");	
	var thirdButton = $("#carousel-nav > .third");
	
	var init = function(){
		itemsHolder.css({"width": (items.length * itemWidth) + "px"});
		bind();
		start();
	}
	
  var bind = function(){
    firstButton.on("click", first);
    secondButton.on("click", second);
    thirdButton.on("click", third);
  }
	
	var start = function(){
		loop();
		timerId = window.setInterval(loop, delay);
	}
	
	var stop = function(){
		if(timerId){
			window.clearInterval(timerId);
		}
	}
	
	var loop = function(){
		next();
	}
	
	var next = function(){
		currentItem++;
		
		if(currentItem == items.length){
			currentItem = 0;
		}
		
		move();
	};
	
	var previous = function(){
		currentItem--;
		
		if(currentItem <= 0){
			currentItem = items.length - 1;
		}
		
		move();
	}
	
	var move = function(){
		var leftPosition = currentItem * itemWidth * -1;
		itemsHolder.stop().animate({"left": leftPosition + "px"}, 1000);

		animateDots();
	}
	
	var animateDots = function(){
		firstButton.html("&#9679;");
		secondButton.html("&#9679;");
		thirdButton.html("&#9679;");
		
		if(currentItem == 0){
			firstButton.html("&#9675;");
		}
		else if(currentItem == 1){
			secondButton.html("&#9675;");
		}
		else{
			thirdButton.html("&#9675;");
		}
	}
	
	var first = function(){
		currentItem = 0;

		animateDots();
		move();
	}
	
	var second = function(){
		currentItem = 1;
		
		animateDots();
		move();
	}
	
	var third = function(){
		currentItem = 2;
		
		animateDots();
		move();
	}
	
	return {
		init: init,
		next: next,
		previous: previous,
		start: start,
		stop: stop
	}
})();