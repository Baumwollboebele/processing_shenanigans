float radius = 40;

float x0 = 689/2;
float y0 = 20;

float x = x0;
float y = y0;

float cor = 0.65;

float vx0 =0;
float vy0 = 1;

float vx = vx0;
float vy = vy0;

float dt = 0.08;

float g = -9.8;

int window_height = 400;

float t = 0;

void setup(){
  size(680,400);
  noStroke();
  
}

void draw(){
   background(102);
  
   t = t+dt;
   x = x+vx0*dt;
   y = y+vy*dt;
   
   vy = vy-g*dt;
   
   if(y+radius >= window_height){
     vy = -vy*cor;
   }
   
   circle(x,y,radius);
}
