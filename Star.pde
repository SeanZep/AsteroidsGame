class Star{
	int myX, myY;
	public Star(){
		myX = (int)(Math.random()*400);
		myY = (int)(Math.random()*400);
	}
	public void show(){
		fill(255, 255, 255);
		noStroke();
		ellipse(myX, myY, 10, 10);
	}
}
