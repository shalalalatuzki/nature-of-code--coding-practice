import java.util.*;
class ParticleSystem{
  PVector gravity;
  PVector origin;
  ArrayList<Particle> particles;
  //initial particle system
  ParticleSystem(PVector position){
    origin=position.get();
    particles=new ArrayList<Particle>();
    gravity=new PVector(0,1.0);
  }
  //add single particle
  void addParticle(){
    //particles.add(new Particle(new PVector(mouseX,mouseY)));
    particles.add(new Particle(origin));
  }
  //add force and update particle
  void run(){
    //addParticle();
    //mousePressed();
    Iterator<Particle>it=particles.iterator();
    while(it.hasNext()){
       Particle p=it.next();
       p.aplayForce(gravity);
       p.run();
       if(p.isDead()){
          it.remove();
          println("Particle dead");
      }
    }
   }
}
