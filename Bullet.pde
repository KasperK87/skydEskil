class Bullet extends GameObj {
  float dir;
  float speed;
  PImage sprite;
  PVector pos;
  
  
  Bullet(PVector _pos, float _dir){
    sprite = loadImage("Nogger.png");
    pos = _pos;
    dir = _dir;
    speed = 5;
  }
  
  void update(){
    pushMatrix();
    rotate(dir);
    pos.x += PVector.fromAngle(dir).x*speed;
    pos.y += PVector.fromAngle(dir).y*speed;
    popMatrix();
    
  }
  
  void render(){
   
    pushMatrix();
    mapToView(pos);
    rotate(dir);
    scale(0.1);
    image(sprite,0,0);
    //ellipse(0,0, 50, 50);
    //line(25,0,0,0);
    popMatrix();
  }
}