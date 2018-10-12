class Walker{
  int x,y;
  Walker(){
    x=width/2;
    y=height/2;
  }
  void display(){
    noStroke();
    fill(random(200),random(166),random(100));
    ellipse(x,y,5,5);
  }
  void step(){
    float step=randomGaussian();
    //step=60*step+320;
    float num=random(1);
    if(num<0.2){
      x+=step;
    }
    else if(num<0.3){
    y+=step;
    }
    else if(num<0.7){
      x-=step;
    }
    else{
      y-=step;
    }
  }
}
