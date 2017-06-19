## Release 0: Make a Plan
## PLAN THE THING (10 MINUTES MAX)

## Release 1: Study Up
## LEARN THE THING (2 HOURS MAX)
* Pre-requisites: HTML, CSS JavaScript
* "Write less, do more" library: Does what JS can do, but requires less code, but requires a library, so in some cases, could possibly slow down app if not done correctly by waiting to load library.
* Two ways to use JQuery:
1) Download the jQuery library from jQuery.com: http://jquery.com/download/

    <head>
    <script src="jquery-3.2.1.min.js"></script>
    </head>

2a) Include jQuery from a CDN, like Google:

    <head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    </head>

2b) Include jQuery from a CDN, like Microsoft:

    <head>
    <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.2.1.min.js"></script>
    </head>

## jQuery Syntax
Basic syntax is: $(selector).action()
  A $ sign to define/access jQuery
  A (selector) to "query (or find)" HTML elements
  A jQuery action() to be performed on the element(s)

## Examples:
  $(this).hide() - hides the current element.
  $("p").hide() - hides all <p> elements.
  $(".test").hide() - hides all elements with class="test".
  $("#test").hide() - hides the element with id="test".

## The Document Ready Event:
  $(document).ready(function(){
    // jQuery methods go here...
  });

## Tip: The jQuery team has also created an even shorter method for the document ready event:
  $(function(){
     // jQuery methods go here...
  });

## jQuery Selectors
  1) The element Selector: $("p")

    $(document).ready(function(){
      $("button").click(function(){
        $("p").hide();
      });
    });

  2) The #id Selector: $("#test")

    $(document).ready(function(){
      $("button").click(function(){
          $("#test").hide();
        });
      });

  3) The .class Selector: $(".test")

    $(document).ready(function(){
      $("button").click(function(){
          $(".test").hide();
        });
    });

  4) More Examples of jQuery Selectors:

  $("*")	Selects all elements
  $(this)	Selects the current HTML element
  $("p.intro")	Selects all <p> elements with class="intro"
  $("p:first")	Selects the first <p> element
  $("ul li:first")	Selects the first <li> element of the first <ul>
  $("ul li:first-child")	Selects the first <li> element of every <ul>
  $("[href]")	Selects all elements with an href attribute
  $("a[target='_blank']")	Selects all <a> elements with a target attribute value equal to "_blank"
  $("a[target!='_blank']")	Selects all <a> elements with a target attribute value NOT equal to "_blank"
  $(":button")	Selects all <button> elements and <input> elements of type="button"
  $("tr:even")	Selects all even <tr> elements
  $("tr:odd")	Selects all odd <tr> elements

## Functions In a Separate File

  <head>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js">
  </script>
  <script src="my_jquery_functions.js"></script>
  </head>

## jQuery Event Methods
  1) Mouse Events: click, dblclick, mouseenter, mouseleave
  2) Keyboard Events: keypress, keydown, keyup
  3) Form Events: submit, change, focus, blur
  4) Document/Window Events: load, resize, scroll, unload

## jQuery Syntax For Event Methods

  $("p").click(function(){
    // action goes here!!
  });

## Commonly Used jQuery Event Methods

  1) $(document).ready()

  2) click()
    $("p").click(function(){
      $(this).hide();
    });

  3) dblclick()
    $("p").dblclick(function(){
      $(this).hide();
    });

  4) mouseenter()
    $("#p1").mouseenter(function(){
      alert("You entered p1!");
    });

  5) mouseleave()
    $("#p1").mouseleave(function(){
      alert("Bye! You now leave p1!");
    });

  6) mousedown()
    $("#p1").mousedown(function(){
      alert("Mouse down over p1!");
    });

  7) mouseup()
    $("#p1").mouseup(function(){
      alert("Mouse up over p1!");
    })

  8) hover()
    $("#p1").hover(function(){
      alert("You entered p1!");
    },
    function(){
        alert("Bye! You now leave p1!");
    });

  9) focus()
    $("input").focus(function(){
      $(this).css("background-color", "#cccccc");
    });

  10) blur()
    $("input").blur(function(){
      $(this).css("background-color", "#ffffff");
    });

## The on() Method: The on() method attaches one or more event handlers for the selected elements.
  $("p").on("click", function(){
      $(this).hide();
  });

## Attach multiple event handlers to a <p> element:
  $("p").on({
    mouseenter: function(){
        $(this).css("background-color", "lightgray");
    },
    mouseleave: function(){
        $(this).css("background-color", "lightblue");
    },
    click: function(){
        $(this).css("background-color", "yellow");
    }
  });


## jQuery Effects - Hide and Show

  $("#hide").click(function(){
    $("p").hide();
  });

  $("#show").click(function(){
    $("p").show();
  });

## SPEED:
  $(selector).hide(speed,callback);
  $(selector).show(speed,callback);

  $("button").click(function(){
      $("p").hide(1000);
  });

## jQuery toggle()
  $("button").click(function(){
      $("p").toggle();
  });

  $(selector).toggle(speed,callback);


# Release 2: Make a Thing
# DO THE THING (45 MINUTES MAX)
