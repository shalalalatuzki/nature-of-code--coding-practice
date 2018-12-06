class Particle{
  PVector location;
  PVector velocity;
  PVector acceleration;
  float lifespan;
  float mass;
  Particle(PVector l){
    acceleration=new PVector(0,0.5);
    //float x=random(-1,1);
    velocity=new PVector(random(-2,2),random(-2,2));
    location=l.get();
    lifespan=255;
    mass=10;
  }
   void run(){
     update();
     display();
   }
   void applyForce(PVector force){
     PVector f=force.get();
     f.div(mass);
     acceleration.add(f);
   }
   void update(){
     velocity.add(acceleration);
     location.add(velocity);
     acceleration.mult(0);
     lifespan-=2;
   }
    void display(){
     fill(0);
     ellipse(location.x,location.y,8,8);
   }
   boolean isDead(){
     if(lifespan<0)
        return true;
      else 
        return false;
   }
}
