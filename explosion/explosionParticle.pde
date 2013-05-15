class ExplosionParticle{

PVector location = new PVector(0,0);
PVector speed = new PVector(0,0);
float r;  

ExplosionParticle(float x,float y,float speed, float radius){
location.x = x;
location.x = y;
r = radius;
}


void move(){
location += speed;  
}

void draw(){
ellipse(location.x,location.y,r,r); 
}
    
}
