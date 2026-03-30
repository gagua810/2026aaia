//week06-1 好玩的程式設計
//File-Preference 設大字型
//修改自week05-2 好玩的程式設計 兩層for(迴圈) 配合if... else if... else
//Ctrl-N 開新視窗 
void setup(){
  size(800 ,500);//視窗大小800*500
}
int[][]a = new int[10][16];//Java的陣列寫法, 跟C/C++不同
void mousePressed(){
  int i = mouseY/50, j=mouseX/50;
  a[i][j] = 1;
}
void draw(){
  for(int i=0; i<10; i++){//上周是for y 現在改成for i 左手i
    for(int j=0; j<16; j++){//上周是for x 現在改成for j 右手j
      if(a[i][j]==1) fill(#7CF1FF);//若陣列有值, 設橘色
      else fill(#FF9224);//沒有值,設青色
      rect(j*50, i*50, 50, 50);//畫四邊形
    }
  }
  /*很多行的注解 用斜綫星 這幾行可以不用寫
  for (int y=0; y<500; y+=50){  //外面的for迴圈 y 座標
    for(int x=0; x<800; x+=50){  //裡面的for迴圈 x座標
      if(x<mouseX && mouseX < x+50) fill(#7CF1FF);
      else if(y<mouseY && mouseY < y+50) fill(#7CF1FF);
      else fill(#FF9224);//裡面有3行判斷 決定填充色彩
      rect(x, y, 50, 50);
    }
  }結尾用星斜綫*/
}
