class Walker{
  int x,y;
  Walker(){
    x=width/2;
    y=height/2;
  }
  void display(){
    stroke(0);
    point(x,y);
  }
  void step(){
    float r=random(1);
    if(r<0.2){
      y--;
    }
    else if(r<0.4){
      y++;
    }
    else if(r<0.5){
      x--;
    }
    else{
      x=mouseX;
      y=mouseY;
    }
    //int stepx=int(random(3))-1;
    //int stepy=int(random(3))-1;
    //x+=stepx;
    //y+=stepy;
  }
}
