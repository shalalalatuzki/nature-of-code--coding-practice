Mover[] mover=new Mover[20];
void setup(){
  size(640,480);
  for(int i=0;i<mover.length;i++){
    mover[i]=new Mover(random(20),random(width),random(height));
  }
}
void draw(){
  fill(255,120);
  rect(0,0,width,height);
  int j=1;
  //for(int i=0;i<mover.length-1;i++){
  //  //PVector gravity=new PVector(0,0.1*mover[i].mass);
  //  //mover[i].addForce(gravity);
  //  PVector f=mover[i].attraction(mover[j]);
  //  mover[i].addForce(f);
  //  j++;
  //  mover[i].update();
  //  mover[i].display();
  //  mover[i].checkEdge();
  //}
  //for(int i=0;i<mover.length;i++){
  //  for(int j=0;j<mover.length;j++){
  //    if(i!=j){
  //      PVector attraction=mover[j].attraction(mover[i]);
  //      mover[i].addForce(attraction);
  //    }
  //  }
  //  mover[i].update();
  //  mover[i].display();
  //  mover[i].checkEdge();
  //}
  
}
