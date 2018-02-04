public class ArrayShots{

  public Shot[] shots;
  public int nbShots;  
  
  public ArrayShots(){
    nbShots = 0;
    shots = new Shot[nbShots];
    shots[0] = new Shot(0,0,0);
  }
  
  public Shot[] addToArray(Shot _SH){
    nbShots++;
    Shot[] newShots = new Shot[nbShots];
    for(int i=0; i<shots.length; i++){
      newShots[i] = new Shot(0,0,0);
      newShots[i].cp(shots[i]);
    }
    newShots[nbShots].cp(_SH);
    return newShots;
  }
  
  public Shot[] removeFromArray(int _I){
    nbShots--;
    Shot[] newShots = new Shot[nbShots];
    for(int i = 0; i<_I; i++){
      if(i != _I){
        newShots[i].cp(shots[i]); 
      } else {
        newShots[i].cp(shots[i+1]);
      }
    }
    return newShots;
  }
  
}