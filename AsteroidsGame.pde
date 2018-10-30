Spaceship one = new Spaceship();
public void setup() 
{
  size(400, 400);
}
public void draw() 
{
  background(192);
  one.move();
  one.show();
}
public void keyPressed(){
	if(key == 'd'){
		one.turn(10);
	}
	if(key == 'a'){
		one.turn(-10);
	}
	if(key == 'w'){
		one.accelerate(0.5);
	}
	if(key == 's'){
		one.setDirectionX(0);
		one.setDirectionY(0);
		one.setX((int)(Math.random()*400));
		one.setY((int)(Math.random()*400));
	}
}
