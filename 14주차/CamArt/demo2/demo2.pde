import processing.video.*;

// 웹캠 변수
Capture video;

// 배경 이미지 변수 및 인덱스
PImage[] backgroundImages = new PImage[6];
int currentBackgroundIndex = 0;

// 시간 측정을 위한 변수
int lastSwitchTime = 0;
int switchInterval = 10000; // 10초 (10000 밀리초)

void setup() {
  size(624, 610);
  video = new Capture(this, 620, 760, 30);
  video.start();

  // 배경 이미지 로드
  backgroundImages[0] = loadImage("background.png");
  backgroundImages[1] = loadImage("background2.png");
  backgroundImages[2] = loadImage("background3.png");
  backgroundImages[3] = loadImage("background4.png");
  backgroundImages[4] = loadImage("background5.png");
  backgroundImages[5] = loadImage("background6.png");
}

void captureEvent(Capture video) {
  video.read();
}

void draw() {
  // 좌우반전을 위한 설정
  pushMatrix();
  scale(-1, 1); // x축 방향으로 -1을 곱해 좌우반전
  translate(-width, 0); // 이미지가 화면 왼쪽으로 이동하지 않도록 조정
  
  // 웹캠 프레임을 화면에 그리기
  image(video, 0, 0);
  
  // 설정 복원
  popMatrix();

  // 현재 시간 계산
  int currentTime = millis();
  
  // 시간이 10초(10000 밀리초) 이상 지났다면 배경 이미지 변경
  if (currentTime - lastSwitchTime > switchInterval) {
    currentBackgroundIndex = (currentBackgroundIndex + 1) % backgroundImages.length;
    lastSwitchTime = currentTime;
  }

  // 현재 배경 이미지 가져오기
  PImage currentBackgroundImage = backgroundImages[currentBackgroundIndex];

  // 배경 이미지 위에 그리기 전에 투명한 부분을 처리
  currentBackgroundImage.loadPixels();
  for (int i = 0; i < currentBackgroundImage.pixels.length; i++) {
    // 여기서는 흰색을 투명하게 처리합니다. 필요에 따라 색상을 조정해주세요.
    if (brightness(currentBackgroundImage.pixels[i]) > 250) {
      currentBackgroundImage.pixels[i] = color(0, 0);
    }
  }
  currentBackgroundImage.updatePixels();

  // 처리된 배경 이미지를 그리기
  image(currentBackgroundImage, 0, 0);
}
