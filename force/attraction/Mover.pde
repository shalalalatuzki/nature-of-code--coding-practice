class Mover{
  PVector position;
  PVector velocity;
  PVector acceleration;
  float mass;
  Mover(float m,float x,float y){
    mass=m;
    position=new PVector(x,y);
    velocity=new PVector(0,0);
    acceleration=new PVector(0,0);
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
    fill(position.x,position.y,120);
    noStroke();
    ellipse(position.x,position.y,mass*2,mass*2);
  }
 PVector attraction(Mover m){
   PVector dir=PVector.sub(position,m.position);
   float distance=dir.mag();
   dir.normalize();
   distance=constrain(distance,5,25);
   float attraction=(0.4*mass*m.mass)/(distance*distance);
   
   dir.mult(attraction);
   return dir;
 }
 void checkEdge(){
   if(position.x<0){
     position.x=0;
     velocity.x*=-1;
   }
   else if(position.x>width){
     position.x=width;
     velocity.x*=-1;
   }
   else if(position.y<0){
     position.y=0;
     velocity.y*=-1;
   }
   else if(position.y>height){
     position.y=height;
     velocity.y*=-1;
   }
 }
}
