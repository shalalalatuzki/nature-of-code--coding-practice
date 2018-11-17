class Mover{
  PVector location;
  PVector velocity;
  PVector acceleration;
  float mass;
  boolean mouseCovered=false;
  float damping=0.98;
  PVector dragOffset;
  Mover(float m,float x,float y){
    location=new PVector(x,y);
    velocity=new PVector(0,0);
    acceleration=new PVector(0,0);
    dragOffset=new PVector();
    mass=m;
  }
  void addForce(PVector m){
    PVector f=PVector.div(m,mass);
    acceleration.add(f);
  }
  void update(){
    location.add(velocity);
    velocity.add(acceleration);
    velocity.mult(0.98);
    acceleration.mult(0);
  }
  void display(){
    
    fill(120);
    if(mouseCovered){
      fill(0);
    }
    ellipse(location.x,location.y,mass*10,mass*10);
  }
 void clicked(int mx,int my){
   if(dist(mx,my,location.x,location.y)<mass*5){
       mouseCovered=true;
       dragOffset.x=location.x-mx;
       dragOffset.y=location.y-my;
   }
 }
 void stopDragging(){
   mouseCovered=false;
 }
 void drag(int mx,int my){
   if(mouseCovered){
     location.x=mx+dragOffset.x;
     location.y=my+dragOffset.y;
   }
 }
}
