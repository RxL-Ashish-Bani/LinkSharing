var card=document.getElementById("card");         
function openRegister()
     {
     card.style.transform = "rotateY(-180deg)";	
     }	
function openLogin()
     {
         card.style.transform = "rotateY(0deg)";	
     }

$(document).ready(function(){
     //Handles menu drop down
     $('.dropdown-menu').find('form').click(function (e) {
          e.stopPropagation();
     });
});