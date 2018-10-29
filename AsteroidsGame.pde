Spaceship one = new Spaceship();
public void setup() 
{
  //your code here
}
public void draw() 
{
  background(192);
  one.show();
}
public void keyPressed(){
	if(key == 'd'){
		one.setPointDirection((int)one.getPointDirection() + 10);
	}
	if(key == 'a'){
		one.setPointDirection((int)one.getPointDirection() - 10);
	}
	if(key == 'w'){
		one.setDirectionX(one.getDirectionX()+10);
	}
}
