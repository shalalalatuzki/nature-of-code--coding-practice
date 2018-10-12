class Walker{
  float x,y;
  float tx,ty;
  Walker(){
    tx=0;
    ty=1000;
  }
  void display(){
     noStroke();
     fill(166,200,250,50);
     ellipse(x,y,16,16);
  }
  void step(){
    x=map(noise(tx),0,1,0,width);
    y=map(noise(ty),0,1,0,height);
    tx+=0.005;
    ty+=0.005;
  }
}
