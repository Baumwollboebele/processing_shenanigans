
ArrayList<Ball> balls = new ArrayList<Ball>();

void setup(){
  size(680,400);
  noStroke();
  
  float r;
  
  for(int i = 0; i<5; i++){
  r = random(10,40);
  balls.add(new Ball(random(0+r,width-r),random(0+r,height-r),r));
  }

}
void draw(){
  background(102);
  
 for(Ball b : balls){
   
  b.update();
  b.display();
  b.collision_boundry();
 }
 
 for(int i = 0; i<balls.size();i++){
   for(int j = 0; j <balls.size();j++){
     if(i==j){
      continue;   
     }
     balls.get(i).checkCollision(balls.get(j));
     }
   }
 }
