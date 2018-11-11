class Mover{
  PVector position;
  PVector velocity;
  PVector acceleration;
  float topSpeed;
  int size;
  
  Mover(){
    position=new PVector(random(width),random(height));
    velocity=new PVector(0,0);
    topSpeed=4;
    size=10;
  }
  void step(){
    PVector mouse=new PVector(mouseX,mouseY);
    PVector dir=PVector.sub(mouse,position);
    dir.normalize();
    dir.mult(0.5);
    acceleration=dir;
    velocity.add(acceleration);
    velocity.limit(topSpeed);
    position.add(velocity);
  }
  void display(){
    fill(250,169,169);
    noStroke();
    ellipse(position.x,position.y,size,size);
  }
  void checkEdges(){
    if(position.x<0){
        position.x=width;
    }
    else if(position.x>width){
      position.x=0;
    }
    if(position.y<0){
      position.y=height;
    }
    else if(position.y>height){
      position.y=0;
    }
  }
}
