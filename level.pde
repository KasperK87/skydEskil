class Level {
   PImage background;
  
  Player playerOne;
  Monster swarm;
  Level(){
    background = loadImage("grass.jpg");
    background.resize(1600,1600);
    playerOne = new Player();
    swarm = new Monster(playerOne.pos);
    
  }
  
  void update(){
    playerOne.update();
    swarm.update();
  }
  
  void render(){
    background(#DE6228);
    image(background,width-playerOne.pos.x,
      height-playerOne.pos.y);
    playerOne.render();
    swarm.render();
  }
}