void intro() {
  background(#FFFFFF);
  textAlign(CENTER, CENTER);
  textSize(70);
  fill(colors[c]);
  textFont(sketch,100);
  text("Color Game", width/2, height/10);
  score=0;
  timer=0;
  //gif
}

void introClicks() {
  mode=GAME;
   w=int(random(0,8));
   c=int(random(0,8));
}
