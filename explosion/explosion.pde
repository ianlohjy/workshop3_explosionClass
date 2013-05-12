void setup(){

size (200,200);
  
}

class Explosion{
 
 float xpos;
 float ypos;
 float density;
 float radius;
 float energy;
 float tension;
 
 Explosion(x,y,d,r,e,t){
   
   xpos=x;
   ypos=y;
   density=d;
   radius=r;
   energy=e;
   tension=t;
   
   num[] = new int[density]; 
   vel[] = new int[density]; 
   pos[] = new int[density]; 
   
 }
 
 
 void build(){
   for (int i; i<density+1 ; i++){
     
     
     
     
     random(radius) * cos(random(0,360));
     random(radius) * sin(random(0,360));
     
     ellipse()
   }
     
 }
 
 void run(){
   
 }
 
  
  
}


void draw(){
 
  line(0,0,200,200);
  
}
