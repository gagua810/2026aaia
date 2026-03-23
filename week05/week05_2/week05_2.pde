//week05-2 好玩的程式設計 兩層for(迴圈) 配合if... else if... else
//Ctrl-N 開新視窗 
void setup(){
  size(800 ,500);//視窗大小800*500
}
void draw(){
  for (int y=0; y<500; y+=50){  //外面的for迴圈 y 座標
    for(int x=0; x<800; x+=50){  //裡面的for迴圈 x座標
      if(x<mouseX && mouseX < x+50) fill(#7CF1FF);
      else if(y<mouseY && mouseY < y+50) fill(#7CF1FF);
      else fill(#FF9224);//裡面有3行判斷 決定填充色彩
      rect(x, y, 50, 50);
    }
  }
}
