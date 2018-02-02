Star[] s = new Star[617];
Vessel v = new Vessel(30, 50, 50);
BackGround b = new BackGround(250);

void setup(){
  for(int i=0; i<s.length; i++){
    s[i] = new Star(45,45,8,15);   
  }
  size(1200,700);
}

void draw(){
  background(0);
  for(int i=0; i<s.length; i++){
    s[i].update();
    s[i].display();
  }
  v.updateLocation();
  v.show();
}

void keyPressed(){
  
  if(key == 'z'){
    v.updateControl("up", true);
  } else if(key == 's') {
    v.updateControl("down", true);
  } else if(key == 'q') {
    v.updateControl("left", true);
  } else if(key == 'd') {
    v.updateControl("right", true);
  } 
  
}

void keyReleased(){
  if(key == 'z'){
    v.updateControl("up", false);
  } else if(key == 's') {
    v.updateControl("down", false);
  } else if(key == 'q') {
    v.updateControl("left", false);
  } else if(key == 'd') {
    v.updateControl("right", false);
  } 
}