class Walker{
  int x,y;
  Walker(){
    x=width/2;
    y=height/2;
  }
  void display(){
    noStroke();
    fill(random(100),random(200),random(250));
    ellipse(x,y,3,3);
  }
  void step(){
    float stepx=0,stepy=0;
    float r1=random(0,10);
    float r2=random(0,10);
    //float p=r1*r2;
    float p=r2;
    if(r1<p){
      stepx=r1;
      stepy=r2;
      x+=stepx;
      y+=stepy;
    }
    else{
       stepx=r2;
       stepy=r1;
       x-=stepx;
       y-=stepy;
    }
  }
}
