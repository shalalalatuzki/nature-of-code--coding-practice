class balloonMover{
  PVector position;
  PVector velocity;
  PVector accelerate;
  PVector gravity;
  PVector uper;
  PVector wind;
  int x=0,y=1000;
  
  balloonMover(){
    position=new PVector(width/2,height-15);
    velocity=new PVector(0,0);
    accelerate=new PVector(0,0);
    gravity=new PVector(0,0.1);
    uper=new PVector(0,-0.15);
    //wind=new PVector(random(-0.01*(noise(x)),0.01*(noise(x))),0);
     wind=new PVector(random(-0.001,0.001),0);
  }
  void Addforce(){
    accelerate.add(gravity).add(uper).add(wind);
    x++;
    y++;
  }
  void update(){
    velocity.add(accelerate);
    position.add(velocity);
    accelerate.mult(0);
  }
  void display(){
    fill(252,173,173);
    stroke(10);
    ellipse(position.x,position.y,20,30);
  }
  void checkEdge(){
    if(position.y<0){
      position.y=0;
      velocity.y*=-0.5;
      
    }
    if(position.y>height+1){
      position.y=height;
      velocity.y*=-0.5;
    }
     if(position.x<0){
      velocity.x*=-1;
      position.x=0;
    }
    if(position.x>width){
      velocity.x*=-1;
      position.x=width;
    }
  }
}
