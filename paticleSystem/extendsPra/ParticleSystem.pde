import java.util.*;
class ParticleSystem{
  ArrayList<Particle> particles;
  PVector origin;
  //PVector gravity;
  ParticleSystem(PVector location){
    origin=location.get();
    particles=new ArrayList<Particle>();
   // gravity=new PVector(0,1.0);
  }
  void addParticle(){
    float r=random(1);
    if(r<0.5){
      particles.add(new Particle(origin));
    }else{
      particles.add(new Confetti(origin));
    }
  }
  //open port
  void applyForce(PVector f){
    for(Particle p:particles){
      p.applyForce(f);
    }
  }
  void applyRepeller(Repeller r){
    for(Particle p:particles){
      PVector force=r.repel(p);
      p.applyForce(force);
      //print("in particle system");
    }
  }
  void run(){
    Iterator<Particle> it=particles.iterator();
    while(it.hasNext()){
      Particle p=(Particle)it.next();
      p.run();
      //PVector force=
      p.applyForce(gravity);
      if(p.isDead()){
        it.remove();
      }
    }
  }
}
