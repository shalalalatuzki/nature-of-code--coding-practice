class Mover{
  PVector position;
  PVector velocity;
  PVector acceleration;
  float mass;
  
  Mover(float _mass,int x,int y){
    position=new PVector(x,y);
    velocity=new PVector(0,0);
    acceleration=new PVector(0,0);
    mass=_mass;
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
    stroke(0);
    fill(175,120,160);
    ellipse(position.x,position.y,mass,mass);
  }
  void checkEdge(){
    if(position.x<0){
      velocity.x*=-1;
      position.x=0;
      acceleration.add(0.1/(position.x+0.1),0);
    }
    if(position.x>width){
      velocity.x*=-1;
      position.x=width;
       acceleration.add(0.1/(position.x+0.1),0);
    }
    if(position.y<0){
      position.y=0;
      velocity.y*=-1;
       acceleration.add(0.1/(position.y+0.1),0);
    }
    if(position.y>height){
      position.y=height;
      velocity.y*=-1;
       acceleration.add(0.1/(position.y+0.1),0);
    }
  }
}
