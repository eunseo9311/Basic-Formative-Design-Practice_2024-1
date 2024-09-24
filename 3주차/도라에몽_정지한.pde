
void setup() {
  // Set the size of the window
  size(600, 400);  
  // The frame rate is set to 30 frames per second.
  frameRate(30);
} //end of void



void draw() {
  // Draw a white background
  background(255);  

  // Set ellipses and rects to CENTER mode
  ellipseMode(CENTER);
  rectMode(CENTER); 


  
  // Draw Zoog's body
  stroke(0);
  fill(175);
  //rect(300, 200, 20, 100);
  ellipse(300, 200, 40, 100);


  // Draw Zoog's head
  int headSize = 100;
  float WHITE_HEAD= 0.77;
  
  stroke(0);
  fill(#117FD3);
  ellipse(300, 200, headSize, headSize);
  fill(#F5F5F5);
  ellipse(300, 210, headSize * WHITE_HEAD, headSize * WHITE_HEAD); 






 // Draw Zoog's 인중 & 방울 
  line(300, 197, 300, 223);
  arc(301, 225, 50, 16, 0.25, 3.64, OPEN);

  fill(#F03853);
  rect(300, 248, 55,5);
  fill(random(255), random(255),random(255));
  ellipse(300, 255, 15,15);
  


  // Draw Zoog's eyes
  // The eye color is determined by the mouse location.
  //fill(mouseX/2, 0, mouseY/2);
  fill(#F5F5F5);
  ellipse(288, 180, 23, 30); 
  ellipse(312, 180, 23, 30); 
  
  
  fill(0);
  ellipse(290, 180, 6, 10); 
  ellipse(310, 180, 6, 10); 
  
  
  fill(255);
  ellipse(290, 180, 3, 5); 
  ellipse(310, 180, 3, 5); 

  // Draw Zoog's moushtesh & nose
  stroke(0);
  // The legs are drawn according to the mouse location and the previous mouse location.
  line(260, 195, 287, 203);
  line(340, 195, 313, 203);
  line(257, 208, 284, 208);
  line(343, 208, 316, 208);
  line(260, 221, 287, 213);
  line(340, 221, 313, 213);
  
  
  fill(#F03853);
  //16진수 2개씩 RGB에 해당되는 것들임 
  ellipse(300, 197, 13, 13); 
  noStroke();
  fill(255);
  ellipse(298, 194, 5, 3); 
  



}//end of draw



void mousePressed() {
  println("I love my friends !");
}//end of mousepressed
