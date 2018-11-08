class Spaceship extends Floater  
{   
    public Spaceship(){
    	corners = 3;
    	xCorners = new int[corners];
    	xCorners[0] = 16;
	    xCorners[1] = -8;
	    xCorners[2] = -8;
	    yCorners = new int[corners];
	    yCorners[0] = 0;
	    yCorners[1] = 8;
	    yCorners[2] = -8;
	    myColor = color(255, 255, 255);
    	myCenterX = 250;
    	myCenterY = 250;
    	myDirectionX = 0;
    	myDirectionY = 0;
    	myPointDirection = 0;
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
