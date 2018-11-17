class Conspring{
  PVector anchor;
  float len;
  float k=0.1;
  Conspring(float x,float y,float l){
    anchor=new PVector(x,y);
    len=l;
  }
  void connect(Mover m){
    PVector force=PVector.sub(m.location,anchor);
    float d=force.mag();
    d-=len;
    force.normalize();
    force.mult(-1*k*d);
    m.addForce(force);
  }
  void displayAnchor(){
    fill(255);
    stroke(125);
    rectMode(CENTER);
    rect(anchor.x,anchor.y,10,10);
  }
  void displayLine(Mover m){
    strokeWeight(2);
    stroke(0);
    line(m.location.x,m.location.y,anchor.x,anchor.y);
  }
  void constrainLength(Mover m,float minLen,float maxLen){
    PVector dir=PVector.sub(m.location,anchor);
    float d=dir.mag();
    if(d<minLen){
      //  m.location=anchor.add(minLen,);
        dir.normalize();
        dir.mult(minLen);
        m.location=PVector.add(dir,anchor);
        m.velocity.mult(0);
    }
    if(d>maxLen){
      dir.normalize();
      dir.mult(maxLen);
      m.location=PVector.add(dir,anchor);
      m.velocity.mult(0);
    }
  }
}
