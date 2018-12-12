class Bullet extends Floater{
	public Bullet(Spaceship x){
		myCenterX = x.getX();
		myCenterY = x.getY();
		myPointDirection = x.getPointDirection()*(Math.PI/180);
		myDirectionX = 5*Math.cos(myPointDirection);
		myDirectionY = 5*Math.cos(myPointDirection);
	}
	public void move(){
		myCenterX += myDirectionX;    
    	myCenterY += myDirectionY;     
	}
	public void show(){
		ellipse((float)myCenterX, (float)myCenterY, 2, 2);
		translate((float)myDirectionX, (float)myDirectionY);
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