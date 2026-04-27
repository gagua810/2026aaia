//week10-1 好玩的程式設計
void setup(){
  size(300,300);
}
void draw(){
  background(#F0C4C4);
  for(int i=0; i<3; i++){
    for (int j=0; j<3; j++){
      int x = j*100 + 50, y = i*100 + 50;
      ellipse(x, y, 80, 80);
    }
  }
}
