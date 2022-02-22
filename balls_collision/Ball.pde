class Ball{
  PVector position;
  PVector velocity;
  
  float radius;

  Ball(float x, float y, float r){
    position = new PVector(x,y);
    velocity = PVector.random2D();
    velocity.mult(3);
    radius = r;
  }
  
  void update(){
    position.add(velocity);
  }
  
  void display(){
    circle(position.x, position.y, radius);
  }

  void collision_boundry(){
   if(position.x+radius > width){
    velocity.x *= -1;   
   } 
   if(position.x-radius < 0){
     velocity.x *= -1;
   }
   if(position.y+radius > height){
     velocity.y *= -1;
   }
   if(position.y-radius < 0){
     velocity.y *= -1;
   }
   
  }
  
  void checkCollision(Ball ball){
    float d_point = sqrt((pow(ball.position.x-position.x,2))+(pow(ball.position.y-position.y,2)));
    println(d_point);
    
    float d_radius = radius+ball.radius;
    println(d_radius);
    
     if(d_point <= d_radius){
       println("now");
       velocity.x *= -1;
       velocity.y *= -1;
       
       ball.velocity.x *=-1;
       ball.velocity.y *=-1;
     }
   }

  }
