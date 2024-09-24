// Example 3-6: Interactive Zoog?
void setup() {
  // Set the size of the window
  size(600, 400);  
  // The frame rate is set to 30 frames per second.
  frameRate(30);
}

void draw() {
  // Draw a white background
  background(255);  

  // Set ellipses and rects to CENTER mode
  ellipseMode(CENTER);
  rectMode(CENTER); 



  
  // Draw Zoog's body
  stroke(0);
  fill(175);
  //rect(mouseX, mouseY, 20, 100);
  ellipse(mouseX, mouseY, 40, 100);


  // Draw Zoog's head
  int headSize = 100;
  float WHITE_HEAD= 0.77;
  
  stroke(0);
  fill(#117FD3);
  ellipse(mouseX, mouseY, headSize, headSize);
  fill(#F5F5F5);
  ellipse(mouseX, mouseY+10, headSize * WHITE_HEAD, headSize * WHITE_HEAD); 



 // Draw Zoog's 인중 & 방울 
  line(mouseX-0, mouseY-3, mouseX-0, mouseY+23);
  arc(mouseX+1, mouseY+25, 50, 16, 0.25, 3.64, OPEN);

  fill(#F03853);
  rect(mouseX+0, mouseY+48, 55,5);
  fill(random(255), random(255),random(255));
  ellipse(mouseX+0, mouseY+55, 15,15);
  


  // Draw Zoog's eyes
  // The eye color is determined by the mouse location.
  //fill(mouseX/2, 0, mouseY/2);
  fill(#F5F5F5);
  ellipse(mouseX-12, mouseY-20, 23, 30); 
  ellipse(mouseX+12, mouseY-20, 23, 30); 
  
  
  fill(0);
  ellipse(mouseX-10, mouseY-20, 6, 10); 
  ellipse(mouseX+10, mouseY-20, 6, 10); 
  
  
  fill(255);
  ellipse(mouseX-10, mouseY-20, 3, 5); 
  ellipse(mouseX+10, mouseY-20, 3, 5); 

  // Draw Zoog's moushtesh & nose
  stroke(0);
  // The legs are drawn according to the mouse location and the previous mouse location.
  line(mouseX-40, mouseY-5, pmouseX-13, pmouseY+3);
  line(mouseX+40, mouseY-5, pmouseX+13, pmouseY+3);
  line(mouseX-43, mouseY+8, pmouseX-16, pmouseY+8);
  line(mouseX+43, mouseY+8, pmouseX+16, pmouseY+8);
  line(mouseX-40, mouseY+21, pmouseX-13, pmouseY+13);
  line(mouseX+40, mouseY+21, pmouseX+13, pmouseY+13);
  
  
  fill(#F03853);
  //16진수 2개씩 RGB에 해당되는 것들임 
  ellipse(mouseX-0, mouseY-3, 13, 13); 
  noStroke();
  fill(255);
  ellipse(mouseX-2, mouseY-6, 5, 3); 
  
  
  


}

void mousePressed() {
  println("Take me to your leader!");
}
