void setup() {
  size(800, 600); // 캔버스 크기를 더 크게 설정합니다.
  noLoop(); // draw() 함수를 한 번만 실행하도록 설정합니다.
}

void draw() {
  background(255);
  stroke(0);
  noFill();
  float initialSideLength = 400; // 시작 삼각형의 변 길이를 더 크게 설정합니다.
  // 삼각형의 높이 계산
  float initialHeight = sqrt(3) / 2 * initialSideLength;
  // 초기 삼각형을 화면 중앙에 그리기 위한 시작점 설정
  float startX = width / 2;
  float startY = height / 2 + initialHeight / 3;
  
  drawTriangle(startX, startY, initialSideLength);
}

void drawTriangle(float x, float y, float sideLength) {
  if (sideLength < 5) { // 종료 조건을 더 작은 값으로 설정하여 더 세밀한 프랙탈 구조를 생성합니다.
    return;
  }
  
  float height = sqrt(3) / 2 * sideLength;
  
  // 삼각형의 꼭지점 계산
  float x1 = x;
  float y1 = y - 2 * height / 3;
  float x2 = x - sideLength / 2;
  float y2 = y + height / 3;
  float x3 = x + sideLength / 2;
  float y3 = y + height / 3;
  
  // 삼각형 그리기
  triangle(x1, y1, x2, y2, x3, y3);
  
  // 새 삼각형의 변 길이는 현재 삼각형의 변 길이의 절반입니다.
  float newSideLength = sideLength / 2;
  
  // 현재 삼각형의 각 꼭지점에서 새로운 삼각형을 그리는 재귀 호출
  drawTriangle(x1, y1 + (height / 6), newSideLength);
  drawTriangle(x2 + (newSideLength / 2), y2 - (height / 6), newSideLength);
  drawTriangle(x3 - (newSideLength / 2), y3 - (height / 6), newSideLength);
}
