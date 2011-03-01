// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
//http://www.megaupload.com/?d=0TVYGPMY

function loadfractal(){
  alert($('fractal'));

  $("fractal").innerHTML = "<applet code='org.c3sl.ufpr.br.main.Fractal.class' mayscript='mayscript' width='710' height='540'> <param name='archive' value='/fractal/jars/fractal.jar, /fractal/jars/mysql-connector-java-5.0.8-bin.jar, /fractal/jars/balloontip-1.1.1.jar, /fractal/jars/db4o-7.12.156.14667-all-java5.jar' >" 
  "</applet>";

}
