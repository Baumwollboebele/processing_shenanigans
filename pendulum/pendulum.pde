float angle = PI/2;
float angle_acceleration = 0;
float angle_velocity = 0;

float gravity = 1;
float L = 200;

float F;

float x0 = 340;
float y0 = 0;

float x;
float y;

float corr = 0.99;

void setup(){
  size(680,400);
  noStroke();
}

void draw(){
  background(102);
  
  F = gravity * sin(angle);
  angle_acceleration = -F/L;
  angle_velocity = angle_velocity + angle_acceleration;
  angle = angle + angle_velocity;
  
  angle_velocity = angle_velocity*corr;
  
  x = L * sin(angle) + x0;
  y = L * cos(angle) +y0;
  
  stroke(153);
  line(x0,y0,x,y);
  circle(x,y,40);
}
