Explosion explosion;



void setup(){

size (1200,1200);
background (204);

explosion = new Explosion(140,100,200,20,0,0);
explosion.build(); 
  
}


void draw(){
  background (204);
 
  line(0,0,200,200);
  explosion.start(); 
  
  //println("built2!");
  
}
