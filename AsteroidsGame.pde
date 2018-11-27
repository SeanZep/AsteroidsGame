Spaceship one = new Spaceship();
Star[] stars = new Star[50];
ArrayList <Asteroid> asteroids = new ArrayList <Asteroid>();
public void setup() 
{
  size(400, 400);
  for(int i = 0; i<stars.length; i++){
  	stars[i] = new Star();
  }
  for(int i = 0; i<10; i++){
  	asteroids.add(new Asteroid());
  }
}
public void draw() 
{
  background(0);
  one.move();
  for(int i = 0; i<stars.length; i++){
   	stars[i].show();
  }
  one.show();
  for(int i = 0; i<10; i++){
  	asteroids.get(i).move();
  	asteroids.get(i).show();
  }
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
