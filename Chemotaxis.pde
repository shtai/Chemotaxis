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
	int theX, theY, theSize, theColor, walkX, walkY;
	Bacteria()
	{
		theX=50;
		theY=100;
		theSize = 50;
		walkX = (int)(Math.random()*10-5);
		walkY = (int)(Math.random()*10-5);
	}

	void show()
	{
		fill(0);
		ellipse(theX, theY, theSize, theSize);
	} 

	void move()
	{
		theX = theX + (int)(Math.random()*10-5);
		theY = theY + (int)(Math.random()*10-5);
	}

 }    