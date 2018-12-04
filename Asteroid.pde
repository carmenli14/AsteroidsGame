class Asteroid extends Floater
{
	private int rotSpeed;
	public void setX(int x){myCenterX = x;}
  	public int getX(){return (int)myCenterX;}
  	public void setY(int y){myCenterY = y;}   
  	public int getY(){return (int)myCenterY;}
  	public void setDirectionX(double x){myDirectionX = x;}   
  	public double getDirectionX(){return myDirectionX;}
  	public void setDirectionY(double y){myDirectionY = y;}
  	public double getDirectionY(){return myDirectionY;}   
  	public void setPointDirection(int degrees){myPointDirection = degrees;}
  	public double getPointDirection(){return myPointDirection;} 

	public Asteroid()
	{
		rotSpeed = (int)(Math.random()*10-5);
		myColor = color(random(255),random(255),random(255));
		corners = 6;
		int[] xC = {-11, (int)(Math.random()*9)+6, (int)(Math.random()*11)+9, (int)(Math.random()*8)+5, -11, -13};
		int[] yC = {-8, -10, 0, (int)(Math.random()*10)+9, (int)(Math.random()*9)+7, 0};
		xCorners = xC;
		yCorners = yC;
		myCenterX = (int)(Math.random()*width);
    	myCenterY = (int)(Math.random()*height);
    	myDirectionX = (int)(Math.random()*10-5);
    	myDirectionY = (int)(Math.random()*10-5);
    	myPointDirection = (int)(Math.random()*360);
	}
	public void move(){
		turn(rotSpeed);
		super.move();
	}
}