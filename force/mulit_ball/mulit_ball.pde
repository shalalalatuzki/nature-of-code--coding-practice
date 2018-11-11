Mover[] mover=new Mover[100];
PVector gravity;
PVector wind;
void setup(){
  size(640,480);
  for(int i=0;i<mover.length;i++){
     mover[i]=new Mover(i,0,0);
  }
  
}
void draw(){
  fill(255,120);
  rect(0,0,width,height);
  gravity=new PVector(0,0.1);
  wind=new PVector(random(-0.2,0.2),0);
  for(int i=0;i<mover.length;i++){
    mover[i].addForce(gravity);
    mover[i].addForce(wind);
    mover[i].update();
    mover[i].display();
    mover[i].checkEdge();
  }
}
