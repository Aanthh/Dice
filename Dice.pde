void setup()
{
	noLoop();
}
void draw()
{
	background(0)
	
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int numDots, myX, myY;
	
	Die(int x, int y) //constructor
	{
		myX = x;
		myY = y;
	}
	void roll()
	{
		//your code here
	}
	void show()
	{
		fill(255);
		rect(myX, myY, 50, 50)
	}
}
