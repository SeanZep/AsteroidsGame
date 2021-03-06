class Bullet extends Floater{
	public Bullet(Spaceship x){
		myCenterX = x.getX();
		myCenterY = x.getY();
		myPointDirection = x.getPointDirection()*(Math.PI/180);
		myDirectionX = 10*Math.cos(myPointDirection);
		myDirectionY = 10*Math.sin(myPointDirection);
	}
	public void move(){
		myCenterX += myDirectionX;
		myCenterY += myDirectionY;
	}
	public void show(){
		fill(0, 100, 255);
		noStroke();
		ellipse((float)myCenterX, (float)myCenterY, 3, 3);
	}
	public void setX(int x){
		myCenterX = x;
	}
	public int getX(){
		return (int)myCenterX;
	}
	public void setY(int y){
		myCenterY = y;
	}
	public int getY(){
		return (int)myCenterY;
	}
	public void setDirectionX(double x){
		myDirectionX = x;
	}
	public double getDirectionX(){
		return myDirectionX;
	}
	public void setDirectionY(double y){
		myDirectionY = y;
	}
	public double getDirectionY(){
		return myDirectionY;
	}
	public void setPointDirection(int degrees){
		myPointDirection = (double)degrees;
	}
	public double getPointDirection(){
		return myPointDirection;
	}
}