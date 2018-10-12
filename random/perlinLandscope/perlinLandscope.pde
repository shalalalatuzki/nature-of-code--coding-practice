int row,col;
int w,h;
int scal=20;
float [][] mountHeight;
float [][] waterColor;
float flying;
void setup(){
  size(640,640,P3D);
  
  w=900;
  h=900;
  row=h/scal;
  col=w/scal;
  mountHeight=new float[col][row];
  waterColor=new float[col][row];
  //framerate(1);
}
void draw(){
  flying-=0.02;
  float yoff=flying;
  for(int y=0;y<row;y++){
    float xoff=0;
    for(int x=0;x<col;x++){
      mountHeight[x][y]=map(noise(xoff,yoff),0,1,-100,100);
      waterColor[x][y]=map(noise(xoff,yoff),0,1,0,255);
      xoff+=0.1;
    }
    yoff+=0.1;
  }
  background(100,150,220);
  
  
  pushMatrix();
  translate(width/2,height/2);
  rotateX(PI/3);
  for(int y=0;y<row-1;y++){
    //fill(random(166),random(200),random(250));
    
    beginShape(TRIANGLE_STRIP);
    for(int x=0;x<col;x++){
      stroke(waterColor[x][y],150,220);
      fill(waterColor[x][y],100,200);
      vertex(x*scal-width/2,y*scal,mountHeight[x][y]);
      vertex(x*scal-width/2,(y+1)*scal,mountHeight[x][y+1]);
    }
    endShape();
  }
  popMatrix();
  saveFrame("line-#####.png");
}
