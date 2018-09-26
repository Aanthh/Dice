void setup()
{
	background(255);
	size(292, 288);
	noLoop();
}
void draw()
{
	for(int y = 0; y <= 273; y += 55){
		for(int x = 10; x <= 280; x += 55){
			Die bob = new Die(x, y);
			bob.show();
		}
	}
	
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
		r = 1;
	}
	void show()
	{
		fill(255);
		rect(myX, myY, 50, 50);
		System.out.println(r);
		fill(0, 0, 0);
		if(r == 1){
			ellipse(myX + 25, myY + 25, 10, 10);
		}
	}
}
