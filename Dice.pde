int count;
void setup()
{
  background(255);
  size(292, 288);
  noLoop();
}
void draw()
{
  background(255);
  for(int y = 0; y <= 273; y += 55){
    for(int x = 10; x <= 280; x += 55){
      Die bob = new Die(x, y);
      bob.show();
    }
  }
  text("Number of dots: " + count, 96, 283);
  count = 0;
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int numDots, myX, myY, r;
  
  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
    roll();

  }
  void roll()
  {
    r = (int)(Math.random()*6)+1;
  }
  void show()
  {
    fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    rect(myX, myY, 50, 50);
    System.out.println(r);
    fill(0, 0, 0);
    if(r == 1){
      ellipse(myX + 25, myY + 25, 10, 10);
      count = count + 1;
    }else if(r == 2){
      ellipse(myX + 13, myY + 25, 10, 10);
      ellipse(myX + 37, myY + 25, 10, 10);
      count = count + 2;
    }else if(r == 3){
      ellipse(myX + 11.5, myY + 11.5, 10, 10);
      ellipse(myX + 25, myY + 25, 10, 10);
      ellipse(myX + 39.5, myY + 39.5, 10, 10);
      count = count + 3;
    }else if(r == 4){
      ellipse(myX + 13, myY + 13, 10, 10);
      ellipse(myX + 37, myY + 13, 10, 10);
      ellipse(myX + 13, myY + 37, 10, 10);
      ellipse(myX + 37, myY + 37, 10, 10);
      count = count + 4;
    }else if(r == 5){
      ellipse(myX + 13, myY + 13, 10, 10);
      ellipse(myX + 37, myY + 13, 10, 10);
      ellipse(myX + 13, myY + 37, 10, 10);
      ellipse(myX + 37, myY + 37, 10, 10);
      ellipse(myX + 25, myY + 25, 10, 10);
      count = count + 5;
    }else if(r == 6){
      ellipse(myX + 13, myY + 11.5, 10, 10);
      ellipse(myX + 13, myY + 25, 10, 10);
      ellipse(myX + 13, myY + 39.5, 10, 10);
      ellipse(myX + 37, myY + 11, 10, 10);
      ellipse(myX + 37, myY + 25, 10, 10);
      ellipse(myX + 37, myY + 39.5, 10, 10);
      count = count + 6;
    }
  }
}

