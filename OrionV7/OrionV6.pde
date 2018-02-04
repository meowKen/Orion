import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.ListIterator;

//List<Shot> shots = new ArrayList<Shot>();
//ListIterator<Shot> shotsIt = shots.listIterator();

Shot sh;
Star[] s = new Star[600];
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
  if(sh != null){
    println(sh.run);
    sh.show();
    sh.updateLocation();
  }
  /*if(shotsIt!=null){
    while(shotsIt.hasNext()){
      Shot locShot = new Shot(0,0,0);
      locShot.cp(shotsIt.next());
      locShot.updateLocation();
      locShot.show();
      
    }
  }*/
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
  } else if(key == 'c') {
    sh = new Shot(v.x, v.y, 30);
    sh.updateStatus("run", true);  
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
  sh.updateStatus("run", true);
  //shots.add(sh);
  //shotsIt.add(sh);
}