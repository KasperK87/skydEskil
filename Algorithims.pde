float getDirection(PVector p1, PVector p2){
    return new PVector(p2.x-p1.x,p2.y-p1.y).heading();  
}

void mapToView(PVector pos){
  translate(width/2-myGame.currLevel.playerOne.pos.x+pos.x,
      height/2-myGame.currLevel.playerOne.pos.y+pos.y);
}