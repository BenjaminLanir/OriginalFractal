private float divided = 2;
int next = 0;
Button nextButton = new Button(1100, 900, true);
public void setup()
{
	//size(1000, 1000);
	fullScreen();
}
public void draw()
{
	nextButton.show();
	nextButton.clicked();
	translate(640, 512);
	fractal(250, 250, 250);
}
public void fractal(float x, float y, float z)
{
	if (z < 1)
	{
	}
	else
	{
		fill((float)Math.random()*255, (float)Math.random()*255, (float)Math.random()*255);
		stroke((float)Math.random()*255, (float)Math.random()*255, (float)Math.random()*255);
		rotate(1);
		ellipse(x, y, z, z);
		fractal(x + z/2, y, z/divided);
		fractal(x - z/2, y, z/divided);
		fractal(x, y + z/2, z/divided);
		fractal(x, y - z/2, z/divided);
	}
}
class Button
{
	private int myX, myY;
	private boolean forward;
	Button(int x, int y, boolean why)
	{
		myX = x;
		myY = y;
		forward = why;
	}
	public void show()
	{
		if (mouseX < myX && mouseX > myX + 50 && mouseY < myY && mouseY > myY + 40)
		{
		    fill(255, 0, 0);
		}
		else
		{
			fill(0, 255, 0);
		}
		rect(myX -4, myY -17, 50, 40);
		fill(0);
		textSize(20);
		if (forward == true)
		{
			text("Next", myX, myY);
		}
		else
		{
			text("Previous", myX, myY);
		}
	}
	public void clicked()
	{
		if (mousePressed == false || mouseX < myX && mouseX > myX + 50 && mouseY < myY && mouseY > myY + 40)
		{
			next++;
		}
	}
}