private float divided = 2;
public void setup()
{
	size(1000, 1000);
}
public void draw()
{
	fractal(500, 500, 500);
}
public void fractal(float x, float y, float z)
{
	if (z < 1)
	{
	}
	else
	{
		ellipse(x, y, z, z);
		fractal(x + z/2, y, z/divided);
		fractal(x - z/2, y, z/divided);
		fractal(x, y + z/2, z/divided);
		fractal(x, y - z/2, z/divided);
	}
}