class Liquid{
  //inite the shape of liquid
  int x,y,w,h;
  //Coefficient of drag
  float c;
  
  Liquid(int _x,int _y,int _w,int _h,float _c){
    x=_x;
    y=_y;
    w=_w;
    h=_h;
    c=_c;
  }
  boolean contains(Mover m){
   PVector l=m.position;
   if(l.x>x&&l.x<x+w&&l.y>y&&l.y<y+h){
     return true;
   }
   else{
     return false;
   }
 }
 PVector drag(Mover m){
   //calculate the magnitude of drag
   float speed=m.velocity.mag();
   
   float dragMagnitude=c*speed*speed;
   //calculate the direction of drag
   PVector dragForce=m.velocity.get();
   dragForce.normalize();
   dragForce.mult(-1);
   //calculate the drag vector
   dragForce.mult(dragMagnitude).mult(m.mass);
   return dragForce;
 }
  void display(){
    fill(80);
    noStroke();
    rect(x,y,w,h);
  }
}
