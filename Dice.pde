void setup()
{
	size(500,500);
	noLoop();
}
void draw()
{
	//your code here
	background((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
	int sum=0;
	int numFive=0;
	for(int x = 50; x<=450 ; x+=45)
	{
		for(int y = 25; y <=360; y+=45)
		{
			Die casino = new Die(x,y);
			casino.show();
			sum+=casino.num;
			if(casino.num==5){
				numFive++;
			}
		}
	}
	fill(255);
	rect(425,470,75,30);
	fill(0);
	text("TOTAL: "+sum,430,490);
	if(numFive==5 || numFive==10 || numFive ==15)
	{
		background(0);
		textSize(17);
		fill(255);
		text("You Win(A Feeling of Satisfaction)!",30,250);
	}


}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	int myX;
	int myY;
	int num;

	Die(int x, int y) //constructor
	{
		//variable initializations here
		
		myY = y;
		myX = x;
		num = (int)(Math.random()*6)+1;
		
	}
	void roll()
	{
		//your code here

	}
	void show()
	{
		//your code here
		fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
		rect(myX,myY,40,40);
		fill(0);
		if(num==1){
			ellipse(myX+20,myY+20,5,5);
		} 
		else if (num==2)
		 {
			ellipse(myX+10,myY+10,5,5);
			ellipse(myX+30,myY+30,5,5);
		}
		else if (num==3) {
			ellipse(myX+10,myY+10,5,5);
			ellipse(myX+20,myY+20,5,5);
			ellipse(myX+30,myY+30,5,5);
		}
		else if (num==4) {
			ellipse(myX+10,myY+10,5,5);
			ellipse(myX+30,myY+10,5,5);
			ellipse(myX+10,myY+30,5,5);
			ellipse(myX+30,myY+30,5,5);
		}
		else if(num==5){
			ellipse(myX+10,myY+10,5,5);
			ellipse(myX+30,myY+10,5,5);
			ellipse(myX+10,myY+30,5,5);
			ellipse(myX+30,myY+30,5,5);
			ellipse(myX+20,myY+20,5,5);
		}
		else {
			ellipse(myX+10,myY+10,5,5);
			ellipse(myX+30,myY+10,5,5);
			ellipse(myX+10,myY+20,5,5);
			ellipse(myX+30,myY+20,5,5);
			ellipse(myX+10,myY+30,5,5);
			ellipse(myX+30,myY+30,5,5);

		}
	}
}
