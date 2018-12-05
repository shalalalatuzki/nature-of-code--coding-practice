//Particle p;
//int total=10;
//ArrayList<Particle>plist;
//add gravity
ArrayList<ParticleSystem> system;
void setup(){
  size(200,200);
  //ps=new ParticleSystem(1,new PVector(width/2,50));
  //p=new Particle(new PVector(width/2,10));
  //for(int i=0;i<total;i++){
  //  plist.add(new Particle(new PVector(i*20,10)));
  //}
  //plist=new ArrayList<Particle>();
  system=new ArrayList<ParticleSystem>();
  smooth();
}

void draw(){
  background(255);
  for(ParticleSystem ps:system){
     ps.run();
     ps. addParticle();
  //for(int i=0;i<total;i++){
    //plist.add(new Particle(new PVector(width/2,50)));
    //Iterator<Particle> it=plist.iterator();
    //for(Particle p:plist){
    //Particle p=plist.get(i);
    }
}
void mousePressed(){
     system.add(new ParticleSystem(new PVector(mouseX,mouseY)));
}
