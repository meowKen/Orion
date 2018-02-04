class Shot{
  int x, y, index;
  float speed;
  boolean dead, touch, run;
  
  Shot(int _X, int _Y, int _SPEED){
    x = _X;
    y = _Y;
    index = 0;
    speed = _SPEED;
    dead = false;
    touch = false;
    run = false;
  }
  
  public void cp(Shot _SH){ // copy and paste
    x = _SH.x;
    y = _SH.y;
    index = 0;
    speed = _SH.speed;
    dead = _SH.dead;
    touch = _SH.touch;
    run = _SH.run;
  }
  
  public void updateLocation(){
    if(run){
      x += speed;
    }
  }
  
  public void updateStatus(String _KEY, boolean _B){
    switch(_KEY){
      case "dead" : 
        dead = _B;    
        break;
      case "touch" : 
        touch = _B;
        break;
      case "run" :
        run = _B;
        break;
      default :
        break;
    }
  }
  
  public void show(){
    if(run){
       fill(20,193,255); 
       stroke(255,246,108);
       ellipse(x, y, 12, 6);
    }
  }
  
};