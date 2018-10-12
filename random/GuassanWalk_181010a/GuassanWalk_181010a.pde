Walker walker;
void setup(){
  size(640,320);
  background(255);
  walker=new Walker();
}
void draw(){
  walker.display();
  walker.step();
}
