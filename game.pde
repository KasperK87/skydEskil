class Screen{
  void update(){
    
  }
  
  void render(){
    
  }
}

class Game extends Screen {
  Level currLevel;
  Game(){
    currLevel = new Level();
  }
  
  void update(){
    currLevel.update();
  }
  
  void render(){
    currLevel.render();
  }

}

class Splashscreen extends Screen {
  int timer = 120;
  PImage splash;
  
  Splashscreen(){
    splash = loadImage("Splashscreen kill eskil.png");
    splash.resize(800,800);
  }
  
  void update(){
    if (timer <= frameCount){
      screenController = myGame;
    }
  }
  
  void render(){
    image(splash,width/2,height/2);
  }
  
}