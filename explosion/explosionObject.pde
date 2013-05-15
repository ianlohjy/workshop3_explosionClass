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
   
      for (int i = 0 ; i < density; i++){
     float ix = random(radius) * cos(radians(random(0,360)));
     float iy = random(radius) * sin(radians(random(0,360)));
     
     particles.add(new ExplosionParticle(ix+xpos,iy+ypos,0,0,5));
     
     
   }
   
 }
void build(){
   //for (int i; i<density+1 ; i++){
     for (int i = 0 ; i < particles.size()-1; i++){
       ExplosionParticle particle = (ExplosionParticle) particles.get(i);
       particle.draw();
     }
     
     
     //random(radius) * cos(random(0,360));
     //random(radius) * sin(random(0,360));
     
     
   //}
     
 }
 
}
