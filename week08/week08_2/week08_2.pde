//week08-2 好玩的城程式設計 黑白棋 互動下棋
//File-Preference字型放很大
//修改至week08-1
void setup() {
  size(620, 620);//視窗大小
}
int[][] board = new int[10][10];//Java的陣列
void mousePressed(){
  int i = (mouseY-10)/60, j = (mouseX-10)/60;
  if(mouseButton==LEFT) board[i][j] = 1;//黑棋
  if(mouseButton==RIGHT) board[i][j] = 2;//白棋
  if(mouseButton==CENTER) board[i][j] = 0;//清空
}
void draw() {
  background(#7C4C00);//背景色
  for (int i=0; i<10; i++) {//左手i 高度y
    for (int j=0; j<10; j++) {//右手j 寬度x
      int x = 10 + j * 60, y = 10 + i * 60;//小心 ji
      fill(#7C4C00);//填充顔色
      strokeWeight(2);//綫條的粗細
      rect(x, y, 60, 60);//正方形
      if(board[i][j] == 1) fill(0);//黑色
      if(board[i][j] == 2) fill(255);//白色
      if(board[i][j] != 0) ellipse(30+x, 30+y, 50, 50);//畫棋子
    }
  }
}
