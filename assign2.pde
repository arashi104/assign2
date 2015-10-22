//You should implement your assign2 here.
PImage fighterImg;
PImage bg1Img;
PImage bg2Img;
PImage enemyImg;
PImage hpImg;
PImage treasureImg;
int x,y,z;
int a,b,c,hp;
boolean isPlaying;
boolean upPressed = false;
boolean downPressed = false;
boolean leftPressed = false;
boolean rightPressed = false;
float speed = 5;
float movex;
float movey;
void setup () {
  size(640,480) ;  // must use this size.
    x=0;
  fighterImg = loadImage("img/fighter.png");
  bg1Img = loadImage("img/bg1.png");
  bg2Img = loadImage("img/bg2.png");
  enemyImg = loadImage("img/enemy.png");
  hpImg = loadImage("img/hp.png");
  treasureImg = loadImage("img/treasure.png");
  
  a = floor(random(10,600));
  b = floor(random(10,450));
  c = floor(random(10,450));
  hp = floor(random(30,195));
  movex = 580;
  movey = height/2;
  // your code
}

void draw() {

  if (upPressed) {
    movey -= speed;
  }
  if (downPressed) {
    movey += speed;
  }
  if (leftPressed) {
    movex -= speed;
  }
  if (rightPressed) {
    movex += speed;
  }

   image(bg1Img,y,0);
   image(bg2Img,z,0);
   image(fighterImg,movex,movey);
   image(treasureImg,a,b);
   image(enemyImg,x,c);
   fill(255,0,0);
   rect(35,25,hp,25);
  image(hpImg,30,20);
  if(isPlaying){
   // your code
x +=2;
x%=650;
y +=3;
y%=640;
z =y-640;
movex%=650;
movey%=640;
 if(x >= movex && c == movey){
   isPlaying = false;
 }
}
}
void keyPressed(){
  isPlaying =true;
 if (key == CODED) { // detect special keys 
    switch (keyCode) {
      case UP:
        upPressed = true;
        break;
      case DOWN:
        downPressed = true;
        break;
      case LEFT:
        leftPressed = true;
        break;
      case RIGHT:
        rightPressed = true;
        break;
}
}
}
void keyReleased(){
   if (key == CODED) {
    switch (keyCode) {
      case UP:
        upPressed = false;
        break;
      case DOWN:
        downPressed = false;
        break;
      case LEFT:
        leftPressed = false;
        break;
      case RIGHT:
        rightPressed = false;
        break;
    }
  }
  
}
