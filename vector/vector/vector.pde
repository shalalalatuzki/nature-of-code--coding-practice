//Mover[] mover;
ArrayList<Mover> mover;
void setup(){
  size(640,480);
  mover=new ArrayList<Mover>();
  mover.add(new Mover());
  if(mover.size()>10){
    mover.remove(0);
  }
}
  
void draw(){
  fill(255,120);
  rect(0,0,width,height);
  for(Mover m:mover){
    m.step();
    m.display();
    m.checkEdges();
  }
}
