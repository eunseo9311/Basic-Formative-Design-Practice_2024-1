float x = 100;
float y = 100;
float w = 60;
float h = 60;

float xspeed = 3;
float yspeed = 1;


void setup() {
  size(700, 450);
}

void draw() {

  
  x = x + xspeed;
  y = y + yspeed;

  
  if ((x > width) || (x < 0)) {
    xspeed = xspeed * -1;
  }

  
  if ((y > height) || (y < 0)) {
    yspeed = yspeed * -1;
  }

  background(#79B8F5);  
  ellipseMode(CENTER);
  rectMode(CENTER); 


  //outer line
  fill(#EDE2B6);
  rect(0,0,1400,40);
  
  fill(#EDE2B6);
  rect(0,450,1400,40);
  
  fill(#EDE2B6);
  rect(0,200,45,1000);
  
  fill(#EDE2B6);
  rect(700,200,45,1000);
  
  
  
  
  //bench
  fill(255);
  rect(585,50,80,15);
  
  fill(#C3DCF5);
  rect(585,80,80,15);
  
  fill(#C3DCF5);
  rect(585,110,80,15);
 
  fill(#C3DCF5);
  rect(550,50,15,230);
  
  fill(#C3DCF5);
  rect(620,50,15,230);
  
  fill(255);
  rect(550,0,15,150);
  
  fill(255);
  rect(620,0,15,150);
  
  fill(255);
  rect(585,20,80,15);
  





  //tube
  noStroke();
  fill(#F7C80A);
  ellipse(x, y, w*2, h*2); 


  fill(#79B8F5);
  ellipse(x, y, w, h); 
  
  
  fill(#60A5E8);
  ellipse(x, y, w, h); 


  fill(#79B8F5);
  ellipse(x, y, w/1.5, h/1.5); 


  
  

  
}
