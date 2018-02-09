class Screens {

  private int screen = 0;

  Screens(int screen) {
    this.screen = screen;
  }


  void startGame() {
    screen = 1;
  }

  public void keyPressed(char key, int keyCode) { //meter a spacebar
    if (key == CODED) {
      if (keyCode ==' ') {
        if (screen == 0)
          startGame();
      }
    }
  }

  public void initialScreen() {
    background(0);
    textAlign(CENTER);
    text("Click to start", width/2, height/2);
  }

  public void gameplayScreen() {
    background(255);
  }

  // fazer o ecra dar blink como no initialScreen(), mas alternar o preto e o branco
  public void gameOverScreen() {
  }


  void whichScreen() {
    if (screen == 0) {
      initialScreen();
    } else if (screen == 1) {
      println("aqui");
      gameplayScreen();
    } else if (screen == 2) {
      gameOverScreen();
    }
  }
}