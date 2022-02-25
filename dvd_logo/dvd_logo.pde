
float x = 50;
float y = 50;

int rectangle_width = 100;
int rectangle_height = 60;

float x_speed = 1.5;
float y_speed = 1.5;

float x_direction = 1;
float y_direction = 1;

color[] rgb = {#00ADEF, #EC008B, #FFF100, #231F20} ;


void setup(){
  size(680,400);
  noStroke();
}

void draw() {
  background(102);
  x = x + (x_speed*x_direction);
  y = y + (y_speed*y_direction);
  
  if(x > width-(rectangle_width/2)){
    x_direction *= -1;
    fill(rgb[int(random(4))]);
  }
  
  if(y > height-(rectangle_height/2)){
    y_direction *= -1;
    fill(rgb[int(random(4))]);
  }
  
  if(x < (rectangle_width/2)){
    x_direction *= -1;
    fill(rgb[int(random(4))]);
  }
  
  if(y < (rectangle_height/2)){
   y_direction *= -1;
   fill(rgb[int(random(4))]);
  }

textSize(32);
text("DVD",x,y,100,50);

}
