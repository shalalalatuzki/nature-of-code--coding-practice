class Repeller{
  PVector location;
  float r=24;
  float G=1000;
  Repeller(float x,float y){
    location=new PVector(x,y);
  }
  void display(){
    stroke(255);
    fill(255,0,0);
    ellipse(location.x,location.y,r*2,r*2);
  }
  PVector repel(Particle p){
    PVector dir=PVector.sub(location,p.location);
    float d=dir.mag();
    dir.normalize();
    d=constrain(d,5,100);
    float force=-1*G/(d*d);
    dir.mult(force);
    print("in repller");
    return dir;
  }
}
