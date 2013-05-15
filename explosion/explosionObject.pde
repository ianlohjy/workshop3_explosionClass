class Explosion{
 
 ExplosionParticle particle;

 ArrayList particles; 
 float xpos;
 float ypos;
 float density;
 float radius;
 float energy;
 float tension;
 
 Explosion(float x,float y,int d,float r,float e,float t){
   
   particles = new ArrayList();
   xpos=x;
   ypos=y;
   density=d;
   radius=r;
   energy=e;
   tension=t;
   
   //num[] = new int[density]; 
   //vel[] = new int[density]; 
   //pos[] = new int[density]; 
   
   strokeWeight(1);
   
      for (int i = 0 ; i < density; i++){
     float ix = random(radius) * cos(radians(random(0,360)));
     float iy = random(radius) * sin(radians(random(0,360)));
     
     particles.add(new ExplosionParticle(ix+xpos,iy+ypos,0,0,15));
     
     
   }
   
 }
void build(){
   //for (int i; i<density+1 ; i++){
     for (int i = 0 ; i < particles.size()-1; i++){
       ExplosionParticle particle = (ExplosionParticle) particles.get(i);
       particle.draw();
     }
   }

void start(){
     for (int i = 0 ; i < particles.size()-1; i++){
     ExplosionParticle particle = (ExplosionParticle) particles.get(i);
     int linelim = 0;
     
       for(int k = 0 ; k < particles.size()-1; k++){
         ExplosionParticle particle2 = (ExplosionParticle) particles.get(k);
     
         //if ( dist(particle.location.x,particle.location.y,particle2.location.x,particle2.location.y) < 10){
           
           particle.speed.x =  particle.location.x - particle2.location.x;
           particle.speed.y =  particle.location.y - particle2.location.y;
         //}
         
         float dist = dist(particle.location.x,particle.location.y,particle2.location.x,particle2.location.y);
         
         if ( dist < 100 && linelim <= 1 ){
           
           stroke(204, 102, 0, 50);
           strokeWeight(10);
           line(particle.location.x,particle.location.y, particle2.location.x,particle2.location.y);
           strokeWeight(1);
           stroke(1);
           linelim++;
           
         }
     
      
      
      
     
     }
     particle.speed.normalize();
     randomSeed(i);
     particle.speed.mult(random (1));
     particle.move();
     particle.draw();
     
     particle.speed.x = 0;
     particle.speed.y = 0;
   }
  
  
}
 
}
