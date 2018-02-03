Shot sh;
Star[] s = new Star[1200];
Vessel v = new Vessel(10, 50, 50);
BackGround b = new BackGround(250);

void setup(){
  for(int i=0; i<s.length; i++){
    s[i] = new Star(45,15,150,5);   
  }
  size(1900,1000);
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
  
  if(key == 'z' || key == 'w'){
    v.updateControl("up", true);
  } else if(key == 's') {
    v.updateControl("down", true);
  } else if(key == 'q' || key == 'a') {
    v.updateControl("left", true);
  } else if(key == 'd') {
    v.updateControl("right", true);
  } 
  
}

void keyReleased(){
   if(key == 'z' || key == 'w'){
    v.updateControl("up", false);
  } else if(key == 's') {
    v.updateControl("down", false);
  } else if(key == 'q' || key == 'a') {
    v.updateControl("left", false);
  } else if(key == 'd') {
    v.updateControl("right", false);
  } 
}

void mouseClicked(){
  sh = new Shot(v.x, v.y, 30);
}