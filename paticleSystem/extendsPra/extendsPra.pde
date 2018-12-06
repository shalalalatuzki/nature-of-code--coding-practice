//ArrayList<ParticleSystem> parFamaliy;
Repeller repeller;
ParticleSystem particle;
PVector gravity;
void setup(){
  size(640,480);
  //parFamaliy=new ArrayList<ParticleSystem>();
  repeller=new Repeller(width/2,height/2);
  particle=new ParticleSystem(new PVector(width/2,10));
  gravity=new PVector(0,0.5);
}
void draw(){
  background(255);
  particle.addParticle();
 
  particle.applyForce(gravity);
  particle.applyRepeller(repeller);
  particle.run();
  repeller.display();
  //for(ParticleSystem p:parFamaliy){
  //  p.run();
  //  p.addParticle();
  //}
}
void mousePressed(){
  //parFamaliy.add(new ParticleSystem(new PVector(mouseX,mouseY)));
}
