class Player extends GameObj  {
  int health;
  float dir;
  PVector movement;
  PImage sprite;
  boolean run; 
  
  Player(){
    pos = new PVector(width/2, height/2);
    sprite = loadImage("man.png");
    
  }
  
  void update(){
    PVector mousePos = new PVector(mouseX,mouseY);
    dir = getDirection(new PVector(width/2, height/2)
      , mousePos);
    
    if (keyPressed){
      
        if (keyCode == UP || key == 'w')
          if (run){
            pos.y -= 10;
          } else {
          pos.y -= 2;
          }
        if (keyCode == DOWN || key == 's')
          if (run){
            pos.y += 10;
          } else {
          pos.y += 2;
          }
        if (keyCode == LEFT || key == 'a')
           if (run){
            pos.x -= 10;
           } else {
          pos.x -= 2;
           }
        if (keyCode == RIGHT || key == 'd')
          if (run){
            pos.x += 10;
          } else {
          pos.x += 2;
          }
        if (keyCode == SHIFT)
          run = true;
        
        
        
      
    }
    
    
  }
  void render(){
    fill(255,0,0);
    pushMatrix();
    translate(width/2,height/2-sprite.height/2);
    rotate(dir+PI/2);
    image(sprite,0,0);
    //ellipse(0,0, 50, 50);
    //line(25,0,0,0);
    popMatrix();
  }
}