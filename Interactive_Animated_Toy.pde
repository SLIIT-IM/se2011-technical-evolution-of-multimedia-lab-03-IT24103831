float ballX = 100;
float ballY = 100;

float speedX = 4;
float speedY = 3;

float paddleWidth = 120;
float paddleHeight = 20;

void setup() {
  size(700, 400);
}

void draw() {

  // background
  background(230, 240, 255);

  // moving ball
  fill(255, 100, 100);
  ellipse(ballX, ballY, 50, 50);

  // update movement
  ballX += speedX;
  ballY += speedY;

  // bounce from walls
  if (ballX > width - 25 || ballX < 25) {
    speedX *= -1;
  }

  if (ballY > height - 25 || ballY < 25) {
    speedY *= -1;
  }

  // mouse-controlled paddle
  fill(50, 120, 255);
  rect(mouseX - paddleWidth/2, height - 50, paddleWidth, paddleHeight);

  // paddle collision
  if (ballY + 25 > height - 50 &&
      ballX > mouseX - paddleWidth/2 &&
      ballX < mouseX + paddleWidth/2) {

    speedY *= -1;
  }

  // title
  fill(0);
  textSize(20);
  text("Interactive Animated Toy", 20, 30);

  textSize(14);
  text("Move mouse to control paddle", 20, 55);
}
