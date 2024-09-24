import processing.video.*;
import ddf.minim.*;

// 웹캠 변수
Capture video;

// 배경 이미지 변수 및 인덱스
PImage[] backgroundImages = new PImage[6];
int currentBackgroundIndex = 0;

// 시간 측정을 위한 변수
int lastSwitchTime = 0;
int switchInterval = 8000; // 8초 (8000 밀리초)

// 추가된 이미지 변수
PImage startImage;
PImage[] transitionImages = new PImage[7]; // '7.png' 추가
boolean showingStartImage = true;
boolean showingTransitionImage = false;
int transitionStartTime = 0;
boolean showingFinalTransitionImage = false; // '7.png' 표시 여부

// 음악 재생을 위한 변수
Minim minim;
AudioPlayer player;

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

  // 추가된 이미지 로드
  startImage = loadImage("0.png");
  transitionImages[0] = loadImage("1.png");
  transitionImages[1] = loadImage("2.png");
  transitionImages[2] = loadImage("3.png");
  transitionImages[3] = loadImage("4.png");
  transitionImages[4] = loadImage("5.png");
  transitionImages[5] = loadImage("6.png");
  transitionImages[6] = loadImage("7.png"); // '7.png' 로드

  // minim 초기화 및 음악 로드
  minim = new Minim(this);
  player = minim.loadFile("debussy.mp3");
  player.loop(); // 음악 반복 재생
}

void captureEvent(Capture video) {
  video.read();
}

void draw() {
  if (showingStartImage) {
    // 초기 시작 이미지 표시
    image(startImage, 0, 0, width, height);
  } else if (showingTransitionImage) {
    // 전환 이미지 표시
    image(transitionImages[currentBackgroundIndex], 0, 0, width, height);
    
    // 전환 이미지가 3초 동안 표시되었는지 확인
    if (millis() - transitionStartTime > 3000) {
      showingTransitionImage = false;
      lastSwitchTime = millis();
    }
  } else if (showingFinalTransitionImage) {
    // 최종 전환 이미지 ('7.png') 표시
    image(transitionImages[6], 0, 0, width, height);
    
    // 최종 전환 이미지 3초 동안 표시 후 종료
    if (millis() - transitionStartTime > 3000) {
      exit(); // 프로그램 종료
    }
  } else {
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
      if (currentBackgroundIndex < backgroundImages.length - 1) {
        showingTransitionImage = true;
        transitionStartTime = millis();
        currentBackgroundIndex++;
      } else {
        // 마지막 배경 이미지 이후 '7.png'를 표시
        showingFinalTransitionImage = true;
        transitionStartTime = millis();
      }
    }

    // 현재 배경 이미지 가져오기
    PImage currentBackgroundImage = backgroundImages[currentBackgroundIndex];

    // 배경 이미지를 화면에 꽉 차게 그리기
    image(currentBackgroundImage, 0, 0, width, height);
  }
}

void mousePressed() {
  if (showingStartImage) {
    showingStartImage = false;
    showingTransitionImage = true;
    transitionStartTime = millis();
  }
}

void stop() {
  player.close();
  minim.stop();
  super.stop();
}
