class Monster extends GameObj  {
  int health;
  
  float dir;
  
  PImage sprite;
  
  
  Monster(PVector _pos){
    pos = new PVector (0,0);
    sprite = loadImage("man.png");
    
  }
  
  void update(){
    dir = getDirection(pos,new PVector(myGame.currLevel.playerOne.pos.x,
      myGame.currLevel.playerOne.pos.y));
    
    pos.add(PVector.fromAngle(dir).mult(2));
  }
  /*
  void render(){
    fill(0,255,0);
    ellipse(pos.x+random(300,400)-frameCount, pos.y+random(300,400)-frameCount, 50, 50);
  }
  */
  void render(){
    fill(255,0,0);
    pushMatrix();
    mapToView(pos);
    //translate(width/2+pos.x,height/2+pos.y);
    rotate(dir+PI/2);
    image(sprite,0,0);
    //ellipse(0,0, 50, 50);
    //line(25,0,0,0);
    popMatrix();
  }
}