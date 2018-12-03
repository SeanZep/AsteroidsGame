class Asteroid extends Floater{
	private int rotation, speedX, speedY;
	public Asteroid(){
		rotation = (int)(Math.random()*5-2);
		while(rotation == 0)
			rotation = (int)(Math.random()*5)-2;
		speedX = (int)(Math.random()*5-2);
		speedY = (int)(Math.random()*5-2);
		while(speedX == 0 && speedY == 0){
			speedX = (int)(Math.random()*5-2);
			speedY = (int)(Math.random()*5-2);
		}

		corners = 5;
		xCorners = new int[corners];
		yCorners = new int[corners];
		xCorners[0] = (int)(Math.random()*5-10);
		yCorners[0] = (int)(Math.random()*5-10);
		xCorners[1] = (int)(Math.random()*5-10);
		yCorners[1] = (int)(Math.random()*5+6);
		xCorners[2] = 0;
		yCorners[2] = (int)(Math.random()*5+6);
		xCorners[3] = (int)(Math.random()*5+6);
		yCorners[3] = (int)(Math.random()*5+6);
		xCorners[4] = (int)(Math.random()*5+6);
		yCorners[4] = (int)(Math.random()*5-10);
		myColor = color(255, 200, 100);
		myCenterX = (int)(Math.random()*400);
		myCenterY = (int)(Math.random()*400);
		myDirectionX = 0;
		myDirectionY = 0;
		myPointDirection = 180;
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
	public void move(){
		myPointDirection += rotation;
		myCenterX += speedX;
		myCenterY += speedY;

		if(myCenterX >width)
	    {     
	      myCenterX = 0;    
	    }    
	    else if (myCenterX<0)
	    {     
	      myCenterX = width;    
	    }    
	    if(myCenterY >height)
	    {    
	      myCenterY = 0;    
	    } 
	    
	    else if (myCenterY < 0)
	    {     
	      myCenterY = height;    
	    }   
	}
}