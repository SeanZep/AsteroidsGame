class Star{
	int myX, myY;
	public Star(){
		myX = (int)(Math.random()*800);
		myY = (int)(Math.random()*600);
	}
	public void show(){
		fill(255, 255, 255);
		noStroke();
		ellipse(myX, myY, 2, 2);
	}
}
