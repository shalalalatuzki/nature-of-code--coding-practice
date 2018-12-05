class Particle{
  PVector location;
  PVector velocity;
  PVector acceleration;
  float lifeSpan;
  
  float angle;
  float aVelocity;
  float aAcceleration;
  
  int mass;
  Particle(PVector l){
    location=l.get();
    acceleration=new PVector();
    velocity=new PVector(random(-2,2),random(-2,2));
    lifeSpan=255;
    mass=10;
    aVelocity=0;
    //aAcceleration=0;
  }
  void run(){
    update();
    display();
  }
  void aplayForce(PVector force){
    PVector f=PVector.div(force,mass);
    acceleration.add(f);
  }
  void update(){
    velocity.add(acceleration);
    location.add(velocity);
    //angluar velocity
    aAcceleration=acceleration.y/10.0;
    aVelocity+=aAcceleration;
    angle+=aVelocity;
    acceleration.mult(0);
   
    lifeSpan-=2.0;
    
  }
  void display(){
    stroke(0,lifeSpan);
    fill(175,lifeSpan);
    rectMode(CENTER);
    pushMatrix();
    translate(location.x,location.y);
    rotate(angle);
    //rect(location.x,location.y,8,8);
    rect(0,0,random(8),random(8));
    popMatrix();
  }
  boolean isDead(){
    if(lifeSpan<0.0){
      return true;
    }
    else{
      return false;
    }
  }
}
