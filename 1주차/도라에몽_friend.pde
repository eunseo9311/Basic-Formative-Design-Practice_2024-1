void setup(){
   size(800, 800);
   frameRate(30);
}
void draw(){

background(255);
strokeWeight(2);


//head


fill(#51AFFA);
//ellipse(300, 310, 500, 480);
ellipse(mouseX, mouseY, 500, 480);

fill(255);
//ellipse(300, 340, 430, 410);
ellipse(mouseX, mouseY+30, 430, 410);




fill(255);
//ellipse(245, 180, 120, 160);
ellipse(mouseX-55, mouseY-130, 120, 160);

fill(255);
//ellipse(365, 180, 120, 160);
ellipse(mouseX+65, mouseY-130, 120, 160);


//eye

fill(0);
//ellipse(265, 180, 28, 35);
ellipse(mouseX-35, mouseY-130, 28, 35);

fill(0);
//ellipse(345, 180, 28, 35);
ellipse(mouseX+45, mouseY-130, 28, 35);

fill(255);
//ellipse(265, 180, 14, 17);
ellipse(mouseX-35, mouseY-130, 14, 17);


fill(255);
//ellipse(345, 180, 14, 17);
ellipse(mouseX+45, mouseY-130, 14, 17);


//nose



//fill(#F03853);
fill(random(255), random(255),random(255));
//ellipse(305, 265, 65, 65);
ellipse(mouseX+5, mouseY-45, 65, 65);
noStroke();
fill(255);
//ellipse(290, 250, 15, 11);
ellipse(mouseX-10, mouseY-60, 15, 11);





//mouth
stroke(0);
//arc(306, 367, 328, 74, 0.25, 3.64, OPEN);
arc(mouseX+6, mouseY+57, 328, 74, 0.25, 3.64, OPEN);


//line
stroke(0);
//line(305, 298, 305, 402);
line(mouseX+5, mouseY-12, mouseX+5, mouseY+92);



//line(527, 233, 422, 278);
//line(423, 298, 541, 298);
//line(425, 317, 530, 354);
//line(209, 281, 84, 237);
//line(207, 298, 63, 296);
//line(207, 317, 80, 344);

line(mouseX+217, mouseY-77, mouseX+112, mouseY-32);
line(mouseX+123, mouseY-12, mouseX+241, mouseY-12);
line(mouseX+123, mouseY+7, mouseX+230, mouseY+44);
line(mouseX-101, mouseY-29, mouseX-216, mouseY-73);
line(mouseX-103, mouseY-12, mouseX-237, mouseY-24);
line(mouseX-103, mouseY+7, mouseX-233, mouseY+34);

//arm,leg

line(mouseX-35, mouseY+240, pmouseX-35, pmouseY+340);
line(mouseX+40, mouseY+240, pmouseX+40, pmouseY+340);
}
