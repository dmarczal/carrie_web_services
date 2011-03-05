// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

//$(function() {
//    $("ul.tabs li").click(function() {
//      $("ul.tabs li").removeClass("active"); //Remove any "active" class
//      $(this).addClass("active"); //Add "active" class to selected tab
//      return false;
//      });
//});

function checkJavaVersion(){

  if (deployJava.versionCheck('1.6.0_01+') == false) {                   
    userInput = confirm("You need the latest Java(TM) Runtime Environment. Would you like to update now?");        
    if (userInput == true) {  
      // Set deployJava.returnPage to make sure user comes back to 
      // your web site after installing the JRE
      deployJava.returnPage = location.href;

      // install latest JRE or redirect user to another page to get JRE from.
      if(confirm('A versão plugin do Java é incompativél! \nVocê está usando um laptop UCA?')){
        window.location = "/fractal/uca.html"
      }else
        deployJava.installLatestJRE(); 
    }
  }
} 

