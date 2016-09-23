Bacteria [] one;
void setup()   
 {     
 	size(800, 800);
 	one=new Bacteria[10];
 	for (int i=0; i<one.length ;i++)
 	{
 		one[i]=new Bacteria();
 	}
 }  

 void draw()   
 {    
 	background(255,255,255);
 	for (int i=0; i<one.length; i++)
 	{
 		one[i].move();
 		one[i].show();
 	}
 } 

 class Bacteria    
 {     
	int theX, theY, theSize, theColor, theRed, theGreen, theBlue, walkX, walkY;
	Bacteria()
	{
		theX=400;
		theY=400;
		theRed = (int)(Math.random()*255);
		theGreen = (int)(Math.random()*255);
		theBlue = (int)(Math.random()*255);
		theColor=color(theRed, theGreen, theBlue);
		theSize = (int)(Math.random()*50);
		walkX = (int)(Math.random()*10-5);
		walkY = (int)(Math.random()*10-5);
	}

	void show()
	{
		fill(theColor);
		ellipse(theX, theY, theSize, theSize);
	} 

	void move()
	{
		theX = theX + (int)(Math.random()*10-5);
		theY = theY + (int)(Math.random()*10-5);
	}

 }    