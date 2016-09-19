 //declare bacteria variables here   
 void setup()   
 {     
 	size(800, 800);
 }  

 void draw()   
 {    
 	Bacteria one = new Bacteria (400, 400);
 	one.show();
 }  
 class Bacteria    
 {     
	int theX, theY, theSize;
	Bacteria(int x, int y)
	{
		theX = x;
		theY = y;
		theSize = 50;
	}

	void show(int x, int y)
	{
		ellipse(theX, theY, theSize, theSize);
	} 
 }    