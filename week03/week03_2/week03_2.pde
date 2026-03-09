//week03-2 好玩的城程式設計
//Ctrl-N 開新的視窗
void setup(){
  size (400, 300);
}
void draw(){
  //今天主題if(判斷) 如果mouse按下去, 就用紫色
  if(mousePressed)background(255, 128, 255);
  else background(0, 255, 0);// 否則,就綠色
}
