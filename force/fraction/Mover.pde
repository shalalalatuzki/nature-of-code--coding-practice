class Mover{
  PVector position;
  PVector velocity;
  PVector acceleration;
  float mass;
  Mover(float m,int x,int y){
    position =new PVector(0,0);
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
    fill(random(position.x),random(position.y),122);
    noStroke();
    ellipse(position.x,position.y,100*mass,100*mass);
  }
  void checkEdge(){
    if(position.x>width){
      position.x=width;
      velocity.x*=-1;
    }
    if(position.x<0){
      position.x=0;
      velocity.x*=-1;
    }
    if(position.y>height){
      position.y=height;
      velocity.y*=-1;
    }
    if(position.y<0){
      position.y=0;
      velocity.y*=-1;
    }
  }
}
