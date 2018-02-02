class Vessel{
  int size;
  int x,y;
  int Xshot, Yshot;
  float speed;
  boolean up, down, left, right;
    
  Vessel(int _S, int _X, int _Y){ // size, x, y
    speed = 20;
    size = _S;
    x = _X;
    y = _Y;
    up = down = left = right = false;
  }
  
  void updateLocation(){
    if(up){
      y -= speed;
    } else if(down) {
      y += speed;
    } else if(left) {
      x -= speed;
    } else if(right) {
      x += speed;
    }
  }
  
  void updateControl(String s, boolean b){
    if(b){
      switch(s){
        case "up" :
          up = true;
          break;
        case "down":
          down = true;
          break;
        case "left":
          left = true;
          break;
        case "right":
          right = true;
          break;
        default:break;
      }
    } else {
      switch(s){
        case "up" :
          up = false;
          break;
        case "down":
          down = false;
          break;
        case "left":
          left = false;
          break;
        case "right":
          right = false;
          break;
        default:break;
      }
      
    }
  }
  
  void show(){
     fill(0,255,0);
     rect(x,y,size,size); 
  }
}