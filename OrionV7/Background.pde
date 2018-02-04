class BackGround{
  int density;
  Star[] s;
  
  BackGround(int _DEN){
    density = _DEN;
    Star[] s = new Star[_DEN];
    for(int i=0; i<s.length; i++){
      s[i] = new Star(25,30,8,15);   
    }
  }
  
};