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
 		ellipse(mouseX, mouseY, 10, 10);
 		//predX=mouseX;
 		//predY=mouseY;
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
	int theX, theY, theSize, walkX, walkY;
	Bacteria(int x, int y)
	{
		theX = x;
		theY = y;
		theSize = 50;
		walkX = (mouseX-theX)/100;
		walkY = (mouseY-theY)/200;
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