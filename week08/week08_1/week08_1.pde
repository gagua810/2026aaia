//week08-1 好玩的城程式設計 黑白棋
//File-Preference字型放很大
size(620, 620);
background(#7C4C00);//背景色
for (int i=0; i<10; i++) {//左手i 高度y
  for (int j=0; j<10; j++) {//右手j 寬度x
    int x = 10 + j * 60, y = 10 + i * 60;//小心 ji
    fill(#7C4C00);//填充顔色
    strokeWeight(2);//綫條的粗細
    rect(x, y, 60, 60);//正方形
  }
}
