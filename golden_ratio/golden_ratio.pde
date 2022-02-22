
float ratio_a = 0.618;
float ratio_b = 0.382;

void setup(){
  size(680,400);
  noStroke();
}

void draw(){
  background(102);
  
  fill(102,255,178);
  rect(0,0,width*ratio_a,height);
  
  fill(153,153,255);
  rect(width*ratio_a,0,width*ratio_b,height);
  
  fill(153,153,255);
  text("61.8%",((width*ratio_a)/2),height/2);
  
  fill(102,255,178);
  text("61.8%",((width*ratio_a)+(width*ratio_b)/2),height/2);
  
}
