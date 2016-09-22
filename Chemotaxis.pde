boolean userClicked=false;
//int predX, predY;
 Bacteria one = new Bacteria (400, 400);
 void setup()   
 {     
 	size(800, 800);
 }  

 void draw()   
 {    
 	background(255,255,255);
 	if (userClicked==true)
 	{
 		fill (0);
 		int predX[]=(int)(mouseX);
 		int predY[]=(int)(mouseY);
 		ellipse(predX[1], predY[1], 10, 10);

 		one.move();
 	}
 	one.show();
 } 

 void mousePressed()
 {
 	userClicked=true;
 }

 class Bacteria    
 {     
	int theX, theY, theSize, walkX, walkY, walkR;
	Bacteria(int x, int y)
	{
		theX = x;
		theY = y;
		theSize = 50;
		walkR = (int)(Math.random()*5);
		walkX = (mouseX-theX)*walkR/1000;
		walkY = (mouseY-theY)*walkR/1000;
	}

	void show()
	{
		fill(0);
		ellipse(theX, theY, theSize, theSize);
	} 

	void move()
	{
		theX = theX + walkX;
		theY = theY + walkY;
	}

 }    