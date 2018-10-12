void setup(){
  size(640,320);
  background(0);
  
}
void draw(){
  loadPixels();
  float xoff=0.0;
  for(int x=0;x<width;x++){
    float yoff=0.0;
    for(int y=0;y<height;y++){
      noiseDetail(6,0.1);
      //float bright=map(noise(xoff,yoff),0,1,0,255);
      float bright=map(noise(xoff,yoff,xoff),0,1,0,255);
      pixels[x+y*width]=color(bright,random(240),random(200));
      yoff+=0.01;
    }
    xoff+=0.01;
  }
  updatePixels();
}
 
   
