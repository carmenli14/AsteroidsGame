Spaceship ship;
Star[] space = new Star[100];
public void setup() 
{
	size(500,500);
	ship = new Spaceship();
	for (int i=0; i < space.length; i++){
		space[i] = new Star();
	}
}
public void draw() 
{
	background(0);
	ship.show();
	ship.move();
	for (int i=0; i < space.length; i++){
		space[i].show();
	}
}
public void keyPressed() {
	if(keyCode == LEFT)
		ship.turn(-15);
	if(keyCode == RIGHT)
		ship.turn(15);
	if(keyCode == 38)
		ship.accelerate(0.1);
	if(keyCode == DOWN)
		ship.accelerate(-0.1);
	if(keyCode == 79){
		ship.setX((int)(Math.random()*500));
		ship.setY((int)(Math.random()*500));
		ship.setPointDirection((int)(Math.random()*360));
		ship.setDirectionX(0);
		ship.setDirectionY(0);
	}
}
