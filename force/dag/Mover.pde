class Mover{
  PVector position;
  PVector velocity;
  PVector acceleration;
  float mass;
  Mover(float m,float x,float y){
    position=new PVector(x,y);
    velocity=new PVector(0,0);
    acceleration=new PVector(0,0);
    mass=m;
  }
  void addForce(PVector force){
    PVector f=PVector.div(force,mass);
    acceleration.add(f);
  }
  void update(){
    position.add(velocity);
    velocity.add(acceleration);
    acceleration.mult(0);
  }
  void display(){
     fill(random(250));
     stroke(20);
     ellipse(position.x,position.y,10*mass,10*mass);
  }
  void checkEdges(){
    if(position.y>height){
      position.y=height;
      velocity.y*=-0.9;
    }
  }
}
