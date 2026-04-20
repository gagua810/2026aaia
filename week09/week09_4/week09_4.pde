//week09-4 好玩的程式設計(用陣列、for迴圈,畫很多氣球)
//修改自week09-3 好玩的程式設計(氣球會變大)
PImage img;//宣告變數 圖
void setup(){
  size(600, 500);
  img = loadImage("balloon.png");
}
float []x = new float[200];//
float []y = new float[200];//
float []s = new float[200];//
int N = 0;
float s2 = 0.1;
void draw(){//畫圖的函式(每秒60次)
  background(#95FAC5);//背景
  for(int i = 0; i < N; i++){
    image(img, x[i], y[i], 96*s[i], 132*s[i]);
    if(y[i]>0) y[i]--;
  }
  if(mousePressed){
    s2 = s2*1.02;
    image(img, mouseX-96/2*s2, mouseY-132*s2, 96*s2, 132*s2);
  }else s2 = 0.1;
}//這裡的座標, 有稍微改一下, 讓手拿氣球下面綁起來的地方
void mouseReleased(){
  x[N] = mouseX-96/2*s2;
  y[N] = mouseY-132*s2;
  s[N] = s2;
  N++;
}
