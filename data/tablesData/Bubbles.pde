class Bubble{
  int x,y;
  float diameter;
  String name;
  Bubble(int _x,int _y,float _diameter,String _name){
    x=_x;
    y=_y;
    diameter=_diameter;
    name=_name;
  }
  boolean rollOver(int mx,int my){
    if(dist(mx,my,x,y)<diameter/2){
      return true;
    }
    else{
      return false;
    }
  }
  void display(){
   
    stroke(0);
    fill(random(160),225,120);
    ellipse(x,y,diameter,diameter);
    if(rollOver(mouseX,mouseY)){
      fill(random(160),225,120);
      //textMode(CENTER);
      text(name,x,y+diameter/2+20);
    }
  }
}
