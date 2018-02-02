Star[] s = new Star[750];

void setup(){
  for(int i=0; i<s.length; i++){
    s[i] = new Star();   
  }
  size(500,500);
}

void draw(){
  background(0);
  for(int i=0; i<s.length; i++){
    s[i].update(20);
    s[i].display();
  }
}