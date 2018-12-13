Spaceship one = new Spaceship();
Star[] stars = new Star[200];
ArrayList <Asteroid> asteroids = new ArrayList <Asteroid>();
ArrayList <Bullet> bullets = new ArrayList <Bullet>();
private int rocks = 10;
public void setup() 
{
  size(800, 600);
  for(int i = 0; i<stars.length; i++){
  	stars[i] = new Star();
  }
  for(int i = 0; i<rocks; i++){
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
  for(int i = 0; i<asteroids.size(); i++){
	asteroids.get(i).move();
  	asteroids.get(i).show(); 	
  	if(dist(one.getX(), one.getY(), asteroids.get(i).getX(), asteroids.get(i).getY())<20){
  		asteroids.remove(i);
  	}
  }
  for(int i=0; i<bullets.size(); i++){
  	bullets.get(i).move();
  	bullets.get(i).show();
  	if(bullets.get(i).getX() > width){
  		bullets.remove(i);
  	}else if(bullets.get(i).getX() < 0){
  		bullets.remove(i);
  		break;
  	}
  	if(bullets.get(i).getY() > height){
  		bullets.remove(i);
  	}else if(bullets.get(i).getY() < 0){
  		bullets.remove(i);
  	}
  }
  System.out.println(bullets.size());
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
	if(key == 'c'){
		bullets.add(new Bullet(one));
	}
}
