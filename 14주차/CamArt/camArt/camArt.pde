int numFrames = 500;
PImage img;

void setup(){
  size(624,780);
  img = loadImage("진주귀걸이를한소녀.jpg");
  img = loadImage("프리다칼로자화상.png");
  img = loadImage("행복의눈물.png");
  img = loadImage("뭉크의절규.png");
  img = loadImage("고흐자화상.png");
  img = loadImage("마릴린먼로.png");

}

void draw(){
  background(255);
  image(img,mouseX,mouseY,width,height);


}
