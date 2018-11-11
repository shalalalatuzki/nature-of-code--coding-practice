balloonMover balloon;
void setup(){
  size(640,480);
  balloon=new balloonMover();
}
void draw(){
  background(255);
  balloon.update();
  balloon.Addforce();
  balloon.display();
  balloon.checkEdge();
}
