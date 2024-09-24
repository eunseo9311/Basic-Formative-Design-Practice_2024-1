// 최최최최최최최종
PImage day;
PImage night;
PImage ember;
PImage wade;
PImage fire;
PImage water;
PImage fireball;
PImage waterball;
PImage smoke;
PImage gamestart;
PImage gameover;

boolean Bday = true;
boolean Bnight = false;
boolean GAMESTART = true;

ArrayList<PVector> fires = new ArrayList<PVector>(); // fire 위치를 저장하는 ArrayList
ArrayList<PVector> waters = new ArrayList<PVector>(); // water 위치를 저장하는 ArrayList

int score = 0; // 점수 변수 추가

int startTime;
int duration = 30000;
int x = 225; // ember x
int a = 840; // wade x
int fX = 225; // fire X
int wX = 840; // water X
int fY = 500; // fire Y
int wY = 500; // water Y

int w = 1200;
int h = 800;

int numFireballs = 5;
float fbX[] = new float[numFireballs]; // fireball X
float fbY[] = new float[numFireballs]; // fireball Y
float fbSpeedY = 2; // fireball speed Y

int numWaterballs = 5;
float wbX[] = new float[numWaterballs]; // waterball X
float wbY[] = new float[numWaterballs]; // waterball Y
float wbSpeedY = 2; // waterball speed Y

void setup() {
  size(1200, 810);
  startTime = millis();

  day = loadImage("day.jpeg");
  night = loadImage("night.png");
  ember = loadImage("ember.png");
  wade = loadImage("wade.png");
  fire = loadImage("fire.png");
  water = loadImage("water.png");
  fireball = loadImage("fire_ball.png");
  waterball = loadImage("water_ball.png");
  gamestart = loadImage("gameStart.png");
  gameover = loadImage("gameOver.png");
  
  // 불구 위치 초기화
  for (int i = 0; i < numFireballs; i++) {
    fbX[i] = random(0, width);
    fbY[i] = random(-500, -50);
  }

  // 물방울 위치 초기화
  for (int i = 0; i < numWaterballs; i++) {
    wbX[i] = random(0, width);
    wbY[i] = random(-500, -50);
  }
}

void draw() {
  //이미지 표시
  Image();

  // 1분 지나면 배경 변화
  int elapsedTime = millis() - startTime;

  if (elapsedTime >= duration) {
    // 경과된 시간이 1분 이상이면 밤으로 변경
    Bday = !Bday;
    Bnight = !Bnight;
    startTime = millis(); // 시작 시간 다시 설정
  }

  // 불구 이동 및 표시
  for (PVector firePos : fires) {
    image(fire, firePos.x + 25, firePos.y, 100, 100);
    firePos.y -= 15;
  }

  // 물방울 이동 및 표시
  for (PVector waterPos : waters) {
    image(water, waterPos.x + 10, waterPos.y, 100, 100);
    waterPos.y -= 15;
  }
  
  // 불구 이동 및 표시
  for (int i = 0; i < numFireballs; i++) {
    fbY[i] += fbSpeedY;
    image(fireball, fbX[i], fbY[i], 100, 100);
    if (fbY[i] > height) {
      fbY[i] = random(-500, -50);
      fbX[i] = random(0, width);
    }

    // waterball과 fire 충돌 감지
    for (PVector waterPos : waters) {
      if (dist(fbX[i], fbY[i], waterPos.x+30, waterPos.y+30) < 50) { 
        score++; // 점수 증가
        fbY[i] = random(-500, -50); // 충돌한 fireball은 화면 상단으로 이동
        fbX[i] = random(0, width);
      }
    }
  }
  
  // 물방울 이동 및 표시
  for (int i = 0; i < numWaterballs; i++) {
    wbY[i] += wbSpeedY;
    image(waterball, wbX[i], wbY[i], 100, 100);
    if (wbY[i] > height) {
      wbY[i] = random(-500, -50);
      wbX[i] = random(0, width);
    }
    
    // fireball과 water 충돌 감지
    for (PVector firePos : fires) {
      if (dist(wbX[i], wbY[i], firePos.x+30, firePos.y+30) < 50) { 
        score++; // 점수 증가
        wbY[i] = random(-500, -50); // 충돌한 waterball은 화면 상단으로 이동
        wbX[i] = random(0, width);
      }
    }
  }

  // 점수 표시
  fill(255);
  textSize(24);
  text("Score: " + score, 20, 40);
  
  if (GAMESTART){
    image(gamestart, 0, -10, w, h);
  }
  
  if (score > 50){
    image(gameover, 0, -10, 1200, 810);
  }
}


void Image() {
  if (Bday) {
    image(day, 0, -10, 1200, 810);
    fill(255, 30);
    rect(0, 0, 1200, 800);
  } else if (Bnight) {
    image(night, 0, -10, 1200, 810);
    fill(255, 30);
    rect(0, 0, 1200, 800);
  }

  image(ember, x, 600, 150, 150);
  image(wade, a, 600, 120, 140);
}

void keyPressed() {

  if (keyCode == LEFT) {
    a -= 15;
  }
  if (keyCode == RIGHT) {
    a += 15;
  }
  if (keyCode == 'A') {
    x -= 15;
  }
  if (keyCode == 'D') {
    x += 15;
  }
  if (keyCode == 'W') {
    fires.add(new PVector(x, 500)); // 새로운 fire 추가
  }
  if (keyCode == UP) {
    waters.add(new PVector(a, 500)); // 새로운 water 추가
  }
}

void mousePressed(){
  if (mouseX > 350 && mouseX < 850 && mouseY > 500 && mouseY < 600) {
    GAMESTART = false;
  }
}
