class Kreis{
  
  // Attribute  
  int radius;
  int x;
  int y;
  int ri;   // rotanteil im inneren
  int gi;
  int bi;
  int ra;
  int ga;
  int ba;   // blau der linie
  int dicke;
  int dx;
  int dy;
  
  // Methoden  
  void zeichne(){
     fill(ri, gi, bi);        // Füllfarbe
     //stroke(28,89,100);       // Linienfarbe
     //strokeWeight(7);         // Liniendicke
     circle(x, y, radius*2);  // zeichnet den kreis
  }


  
  void go(){
    
    x = x + dx ;
    y = y + dy;    
    
    if (x < (0 + radius) || x > (1000 - radius)){
      dx = -dx;
    }
    
    if (y < 0 + radius ||y > 800 - radius){
      dy = -dy;
    }
       
  }
  
  void goToroid(){
    
    x = x + dx ;
    y = y + dy;
      
    if (x < 0 - radius)  x = 1000 + radius;
    if (x > 1000 + radius)  x = -radius;    
    if (y < 0 - radius)  y = 800 + radius;
    if (y > 800 + radius)  y = -radius;

       
  }
  
  // Konstruktor
  Kreis(int ri, int gi, int bi, int x, int y, int radius, int dx, int dy){
    this.ri = ri;
    this.gi = gi;
    this.bi = bi;
    this.x = x;
    this.y = y;
    this.radius = radius;
    this.dx = dx;
    this.dy = dy;
    
  }
  
  
   
  
}
