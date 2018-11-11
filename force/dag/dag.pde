Mover[] movers=new Mover[5];
Liquid liquid;

void setup(){
  size(640,480);
  reset();
  liquid=new Liquid(0,height/2,width,height,0.1);
}
void draw(){
  background(255);
  liquid.display();
   for(int i=0;i<movers.length;i++){
    if(liquid.contains(movers[i])){
        PVector dragForce=liquid.drag(movers[i]);
        movers[i].addForce(dragForce);
    }
   PVector gravity=new PVector(0,0.1*movers[i].mass);
   
   movers[i].addForce(gravity);
   movers[i].update();
   movers[i].display();
   movers[i].checkEdges();
  }
}
void mousePressed(){
  reset();
}
void reset(){
 for(int i=0;i<movers.length;i++){
   movers[i]=new Mover(random(0.5*2.25,3*2.25),20+width/5*i,0);
 }
}
