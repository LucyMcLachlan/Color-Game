void game() {
  background(#000000);
  fill(#FFFFFF);
  stroke(#FFFFFF);
  rect(width/2, 0, width/2, height);
  text("True", width/4, height/6);
  fill(0);
  text("False", width/1.35, height/6);
  fill(colors[c]);
  stroke(colors[c]);
  text(words[w], width/2, height/2);
  timer=timer+10;
  rect(0, height-50, timer, height);
  if (timer>=width) {
    mode=OVER;
    timer=0;
  }
}

void gameClicks() {

  if (c==w && mouseX<=width/2) {
    score=score+1;
    timer=0;
  }
  if (c==w && mouseX>=width/2)mode=OVER;
  if (c!=w && mouseX<=width/2)mode=OVER;
  if (c!=w && mouseX>=width/2) {
    score=score+1;
    timer=0;
  }
  r=int(random(0, 2));
  if (r==0) {
    w=int(random(0, 8));
    c=int(random(0, 8));
  }
  if (r>=1) {
    w=int(random(0, 8));
    c=w;
  }
}