Mover[] mover;
PVector wind;
float u;

void setup(){
  size(640,480);
  mover=new Mover[10];
  wind=new PVector(random(-0.01,0.01),0);
  for(int i=0;i<mover.length;i++){
    mover[i]=new Mover(0.1*i,i*10,i*10);
  }
}
void draw(){
  fill(255,120);
  rect(0,0,width,height);
  for(int i=0;i<mover.length;i++){
    if(mover[i].position.x<width/2){
      u=0.01;
    }
    else {
      u=-0.01;
    }
    float N=1;
    float frictionMag=N*u;
    //calculate friction
    PVector fraction=mover[i].velocity.get();
    fraction.mult(-1);
    fraction.normalize();
    fraction.mult(frictionMag);
    mover[i].addForce(fraction);
    
    PVector gravity=new PVector(0,0.1*mover[i].mass);
    mover[i].addForce(gravity);
    mover[i].addForce(wind);
    
    mover[i].update();
    mover[i].display();
    mover[i].checkEdge();
  }
}
