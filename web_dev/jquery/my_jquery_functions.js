$(document).ready(function(){

  // $("button").click(function(){
  //   $("p").hide();
  // });

  $("#intro").click(function(){
    $(this).hide();
  });

  $('#box1').dblclick(function(){
    $(this).css('background-color', 'orange');
    $('#box1 p').hide();
  });

  $('#box2').hover(function(){
    $(this).css('background-color', 'orange');
    $('#box2 p').hide();
  });


  $("#box3").on({

    mouseenter: function(){
        $(this).css("background-color", "lightgray");
    },
    mouseleave: function(){
        $(this).css("background-color", "lightblue");
    }
  });
  
});
