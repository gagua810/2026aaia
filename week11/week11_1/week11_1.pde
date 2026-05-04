//week11-1 好玩的程式設計 打死地鼠
//修改自 week10-2 好玩的程式設計 地鼠會冒出來
void setup(){
  size(300,300);
}
int [][]a ={ {0,0,0}, {0,0,0,}, {0,0,0,}};//2D陣列(Java)
void mousePressed(){ //mouse按下去1時,檢查地鼠有沒有在這一格
  int i = mouseY / 100, j = mouseX / 100; //左手i對應Y, 右手j對應X
  if(a[i][j]>0){
    a[i][j] = -120;
  }
}
void draw(){
  background(#F0C4C4);
  if(frameCount%60==0){
    int i = int(random(3)), j = int(random(3));
    a[i][j] = 60;
  }
  for(int i=0; i<3; i++){
    for (int j=0; j<3; j++){
      int x = j*100 + 50, y = i*100 + 50;
      if(a[i][j] < 0){ //被打死的可憐小地鼠
        fill(255,0,0);//紅色的血
        a[i][j]++;//數字慢慢從-120變大, 最後會變成0就是死掉的地鼠消失
      }else if (a[i][j]>0){
        fill(#C17D0E, a[i][j]*4);
        a[i][j]--;
      }else fill(#F0C4C4);
      ellipse(x, y, 80, 80);
    }
  }
}
