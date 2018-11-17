Conspring spring;
Mover mover;
void setup(){
  size(640,480);
  spring=new Conspring(width/2,10,100);
  mover=new Mover(10,width/2,100);
}
void draw(){
  background(255);
  //add gravity;
  PVector gravity=new PVector(0,2);
  mover.addForce(gravity);
  //add spring force
  spring.connect(mover);
  //limit spring max and min length;
  spring.constrainLength(mover,30,200);
  
  mover.update();
  mover.drag(mouseX,mouseY);
  
  spring.displayLine(mover);
  mover.display();
  spring.displayAnchor();
  
  fill(0);
  text("click on bob to drag",10,height-5);
}
void mousePressed(){
  mover.clicked(mouseX,mouseY);
}
void mouseReleased(){
  mover.stopDragging();
}
