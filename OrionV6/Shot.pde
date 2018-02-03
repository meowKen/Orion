class Shot{
  int x, y;
  float speed;
  boolean dead, touch, run;
  
  Shot(int _X, int _Y, int _SPEED){
    x = _X;
    y = _Y;
    speed = _SPEED;
    dead = false;
    touch = false;
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
    }
  }
  
};