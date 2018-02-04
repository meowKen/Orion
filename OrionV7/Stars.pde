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
  float r;          //radius of the star for display
  float speed;
  float radiusRatio;
  float speedRatio;
  int depth;
  int depthMin;
  Couleur c;
  
  Star(float _RR, float _SR, int _D, int _DM){
    x = random(0, width);
    y = random(0, height);
    z = random(_DM,_D);
    c = new Couleur();
    radiusRatio = _RR;
    speedRatio = _SR;
    r = radiusRatio / z;
    depth =_D;
    depthMin = _DM;
    speed = speedRatio / z*1.5;
    }
    
    void update(){
     if(x<0){
       x = width+1;
       y = random(0, height);
       z = random(depthMin, depth);
       r = radiusRatio / z;
       
       speed = speedRatio / z*1.5;
     } else {
       x = x-speed*10;
     }
    }
    
    void display(){
      fill(c.getCouleur());
      noStroke();
      
      //sx = map(x/z,0,1,0,width);
      //sy = map(y/z,0,1,0,width);
      
      //r = map(z,width,0,0,8);
      ellipse(x,y,r,r);
    }
 
   
};