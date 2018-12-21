class Bullet extends Floater
{
	public Bullet(Spaceship ship)
	{
		myCenterX = ship.getX();
		myCenterY = ship.getY();
		double dRadians = ship.getPointDirection()*(Math.PI/180);
    	myPointDirection = dRadians;
    	myDirectionX = 5 * Math.cos(dRadians) + ship.getDirectionX();
    	myDirectionY = 5 * Math.sin(dRadians) + ship.getDirectionY();
  	}
  	public void show() {
    	fill(220);
    	ellipse((int)myCenterX, (int)myCenterY, 7, 7);
  	}
  	public void move() {
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY; 
  	}
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
}