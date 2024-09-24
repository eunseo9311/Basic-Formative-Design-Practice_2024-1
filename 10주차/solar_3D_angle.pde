float theta = 0;

void setup() {
  size(1000, 1000, P3D); // P3D 렌더러 사용
}

void draw() {
  background(0); // 검은 배경
  stroke(255); // 흰색 선

  // 태양을 그리기 위해 창의 중앙으로 이동
  translate(width / 2, height / 2);
  fill(255, 200, 50); // 노란색
  sphere(40); // 태양

  // 수성
  pushMatrix();
  rotateX(HALF_PI); // 궤도의 기울기
  // noFill();
  // ellipse(0, 0, 200, 200); // 궤적
  rotateY(theta * 4.15);
  translate(100, 0, 0); // 태양으로부터의 거리
  fill(150, 150, 150); // 회색
  sphere(15); // 수성
  popMatrix();

  // 금성
  pushMatrix();
  rotateX(HALF_PI); // 궤도의 기울기
  // noFill();
  // ellipse(0, 0, 300, 300); // 궤적
  rotateY(theta * 1.62);
  translate(150, 0, 0); // 태양으로부터의 거리
  fill(255, 165, 0); // 주황색
  sphere(30); // 금성
  popMatrix();

  // 지구
  pushMatrix();
  rotateX(HALF_PI); // 궤도의 기울기
  // noFill();
  // ellipse(0, 0, 400, 400); // 궤적
  rotateY(theta);
  translate(200, 0, 0); // 태양으로부터의 거리
  fill(50, 200, 255); // 파란색 (바다)
  sphere(32); // 지구
  pushMatrix();
  rotateY(-theta * 4);
  translate(36, 0, 0); // 지구로부터의 거리
  fill(200, 200, 200); // 연한 회색
  sphere(12); // 달
  popMatrix();
  popMatrix();

  // 화성
  pushMatrix();
  rotateX(HALF_PI); // 궤도의 기울기
  // noFill();
  // ellipse(0, 0, 500, 500); // 궤적
  rotateY(theta * 0.53);
  translate(250, 0, 0); // 태양으로부터의 거리
  fill(255, 100, 50); // 빨간색
  sphere(28); // 화성
  popMatrix();

  // 목성
  pushMatrix();
  rotateX(HALF_PI); // 궤도의 기울기
  // noFill();
  // ellipse(0, 0, 700, 700); // 궤적
  rotateY(theta * 0.084);
  translate(350, 0, 0); // 태양으로부터의 거리
  fill(255, 150, 100); // 갈색
  sphere(70); // 목성

  // 목성의 위성들
  pushMatrix();
  rotateY(theta * 4);
  translate(80, 0, 0); // 목성으로부터의 거리
  fill(255, 215, 0); // 금색
  sphere(10); // 이오
  popMatrix();

  pushMatrix();
  rotateY(theta * 3);
  translate(120, 0, 0); // 목성으로부터의 거리
  fill(255, 255, 255); // 흰색
  sphere(8); // 유로파
  popMatrix();

  pushMatrix();
  rotateY(theta * 2);
  translate(160, 0, 0); // 목성으로부터의 거리
  fill(200, 200, 200); // 연한 회색
  sphere(12); // 가니메데
  popMatrix();

  pushMatrix();
  rotateY(theta * 1.5);
  translate(200, 0, 0); // 목성으로부터의 거리
  fill(169, 169, 169); // 어두운 회색
  sphere(10); // 칼리스토
  popMatrix();

  popMatrix();

  // 토성
  pushMatrix();
  rotateX(HALF_PI); // 궤도의 기울기
  // noFill();
  // ellipse(0, 0, 900, 900); // 궤적
  rotateY(theta * 0.034);
  translate(450, 0, 0); // 태양으로부터의 거리
  fill(210, 180, 140); // 베이지색
  sphere(60); // 토성

  // 토성의 위성들
  pushMatrix();
  rotateY(theta * 3);
  translate(80, 0, 0); // 토성으로부터의 거리
  fill(255, 255, 255); // 흰색
  sphere(10); // 미마스
  popMatrix();

  pushMatrix();
  rotateY(theta * 2);
  translate(120, 0, 0); // 토성으로부터의 거리
  fill(220, 220, 220); // 밝은 회색
  sphere(12); // 엔셀라두스
  popMatrix();

  pushMatrix();
  rotateY(theta * 1.5);
  translate(160, 0, 0); // 토성으로부터의 거리
  fill(255, 200, 150); // 연한 갈색
  sphere(14); // 타이탄
  popMatrix();

  pushMatrix();
  rotateY(theta * 1);
  translate(200, 0, 0); // 토성으로부터의 거리
  fill(169, 169, 169); // 어두운 회색
  sphere(10); // 레아
  popMatrix();

  // 토성의 고리
  pushMatrix();
  rotateX(HALF_PI);
  stroke(255); // 흰색 고리
  noFill();
  ellipse(0, 0, 120, 120); // 고리
  popMatrix();

  popMatrix();

  theta += 0.01;
}
