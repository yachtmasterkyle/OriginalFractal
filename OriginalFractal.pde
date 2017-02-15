public void setup()
{
	size(1000, 1000);
}
public void draw()
{
	fractal(500, 500, 100);	
}
public void fractal(float x, float y, float size)
{
	if(size <= 5)
		rect(x, y, size, size);
	else
	{
		fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
		rect(x,y,size,size);
		fractal(x,y-size*2,size/2);
		fractal(x+size*2,y,size/3.5);
		fractal(x,y+size*2,size/2);
		fractal(x-size*2,y,size/3.5);
	}
}
