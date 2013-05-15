Explosion explosion;

void setup(){

size (200,200);

explosion = new Explosion();
  
}


void draw(){
 
  line(0,0,200,200);
  explosion.build();
}
