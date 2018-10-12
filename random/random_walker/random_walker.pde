//Walker walker;
//void setup(){
//  size(600,400);
//  walker=new Walker();
//  background(255);
//}
//void draw(){
//   walker.step();
//   walker.display();
//}
float angle=0.1;
void setup(){
  size(640,360);
  background(255);
}
void draw(){
  float num=randomGaussian();
  float sd=60;
  float mean=320;
  float x=sd*num+mean;
  //float y=random(0,360);
  //float y=sd*num+mean;
  pushMatrix();
  translate(320,180);
  rotate(angle);
  //float y=sd*num+mean;
  noStroke();
  fill(random(166),random(245),random(100),10);
  ellipse(x-320,0,16,16);
  popMatrix();
  angle++;
}
