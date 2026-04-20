//week09-3 好玩的程式設計(氣球會變大)
//修改自week09-2 好玩的程式設計(互動氣球)
PImage img;//宣告變數 圖
void setup(){
  size(600, 500);
  img = loadImage("balloon.png");
}
float x, y, s = 0.1;//一開始的氣球比較小
void draw(){//畫圖的函式(每秒60次)
  background(#95FAC5);//背景
  //image(img, mouseX-96/2, mouseY-132, 96, 132);
  if (mousePressed){//如果mouse壓下去
    s = s * 1.02;//氣球會變大
    image(img, mouseX-96/2*s, mouseY-132*s, 96*s, 132*s);
  }else s = 0.1;//放開mouse時, 氣球就變小了
}//這裡的座標, 有稍微改一下, 讓手拿氣球下面綁起來的地方
