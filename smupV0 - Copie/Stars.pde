class Couleur{
  int selector;   //0 to 6 --> to choose one amongsth the 7 != star colors
  color c;
  
  Couleur(){
    selector = (int)random(0,7);
    switch(selector){
      case 0:
      c = color(255,248,193);
      break;
      case 1:
      c = color(255,237,193);
      break;
      case 2:
      c = color(255,227,193);
      break;
      case 3:
      c = color(255,200,135);
      break;
      case 4:
      c = color(173,208,242);
      break;
      case 5:
      c = color(146,194,242);
      break;
      case 6:
      c = color(119,163,240);
      break;
      case 7:
      c = color(119,163,240);
      break;
    }
  }
  
  int getCouleur(){ return c; }
  
};


class Star{
  float x;
  float y;
  float z;
  float sx, sy;     //mapped coord. for display 
  float r;          //radius of the star for display
  Couleur c;
  
  Star(){
    x = random(-width, width);
    y = random(-height, height);
    z = random(0,width);
    c = new Couleur();
    }
    
    void update(float speed){
     z = z-speed;
     if(z<1){
       x = random(-width, width);
       y = random(-height, height);
       z = width;
     }
    }
    
    void display(){
      fill(c.getCouleur());
      noStroke();
      
      sx = map(x/z,0,1,0,width);
      sy = map(y/z,0,1,0,width);
      
      r = map(z,width,0,0,8);
      ellipse(sx,sy,r*10,r*10);
    }
 
    void debug(){
      println(z+" || "+x+" - "+sx+" | "+y+" - "+sy+" || "+r);
    }
};