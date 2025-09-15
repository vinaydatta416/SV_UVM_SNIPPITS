//========================================
/*


class constraint_2;
	rand bit[2:0] da[];
	constraint da_size{da.size == 10;
			foreach(da[i])
				da[i] == (i+2)/2;
			}
endclass

constraint_2 c1;

module test();
	initial
		begin
			c1 = new;
			assert(c1.randomize());
			$display("da:%p",c1.da);
		end
endmodule



*/

//========================================
/*



class constraint_7;
	rand int da[];

	constraint c1{da.size == 10;}
	constraint c2{foreach(da[i])
			if(i == 0)
				da[i] == 2;
			else if(i == 1)
				da[i] ==3;
			else if(i/2 == 0)
				da[i] == da[i-2] + 3;
			else if(i/2 != 0)
				da[i] == da[i-2] + 3;
			}
endclass

constraint_7 c1;

module test();
	initial
		begin
			c1=new;
			assert(c1.randomize());
			$display("da: %p",c1.da);
		end
endmodule


*/

//========================================
/*



class constraint_3;
	rand int da[];
	constraint c1{da.size == 10;}
	constraint c2{foreach(da[i])
			if(i<5)
				da[i] == da.size - (i+(i+1));
			else
				da[i] == 18 - (i*2);}
endclass

constraint_3 c1;

module test();
	initial
		begin
			c1 = new;
			assert(c1.randomize());
			$display("da: %p",c1.da);
		end
endmodule


*/

//========================================
/*



class constraint_6;
	rand int da[];
	constraint c1{da.size == 10;}
	constraint c2{foreach(da[i])
			if(i%2 == 0)
				da[i] == 1;
			else
				da[i] == 0;}

endclass

constraint_6 c1;

module test();
	initial
		begin
			c1=new;
			assert(c1.randomize());
			$display("da: %p",c1.da);
		end
endmodule


*/

//========================================
/*
 

class constraint_8;
	rand int da[];
	constraint c1{da.size == 10;}
	constraint c2{foreach(da[i])
			if(i<5)
				da[i] == i + 1;
			else
				da[i] == 10 - i;
			}
endclass

constraint_8 c1;
	
module test();
	initial
		begin
			c1=new;
			assert(c1.randomize());
			$display("da: %p",c1.da);
		end
endmodule



*/

//========================================
/*

class constraint_9;
	rand int da[];
	constraint c1{da.size == 15;}
	constraint c2{foreach(da[i])
			if(i<2)
				da[i] == 0;
			else if(i == 2)
				da[i] == 1;
			else
				da[i] == da[i-3] + da[i-2] + da[i-1];
			}
endclass

constraint_9 c1;

module test();
	initial
		begin
			c1=new;
			assert(c1.randomize());
			$display("da: %p",c1.da);
		end
endmodule



*/

//========================================
/*


class constraint_10;
	rand int da[];
	constraint c1{da.size == 10;}
	constraint c2{foreach(da[i])
			da[i] == (i * 10) + 9;
			}
endclass

constraint_10 c1;

module test();
	initial
		begin
			c1=new;
			assert(c1.randomize());
			$display("da: %p",c1.da);
		end
endmodule




*/

//========================================
/*


class constraint_1;
	rand bit[4:0]a;
	constraint a_range{a % 2 == 1; a inside {[10:30]};}
endclass

constraint_1 c1;

module test;
	initial
		begin
			repeat(5)
				begin
					c1 = new();
					assert(c1.randomize());
					$display("a=%d",c1.a);
				end
		end
endmodule 



*/

//========================================
/*



class constraint_4;
	rand int da[];
	constraint c1{da.size == 10;}
	constraint c2{foreach(da[i])
			da[i] == i/2;}

endclass

constraint_4 c1;

module test();
	initial
		begin
			c1 = new;
			assert(c1.randomize());
			$display("da: %p",c1.da);
		end
endmodule



*/

//========================================
/*



class constraint_5;
	rand int da[];
	constraint c1{da.size == 10;}
	constraint c2{foreach(da[i])
			da[i] == i%2;}

endclass

constraint_5 c1;

module test();
	initial
		begin
			c1 = new;
			assert(c1.randomize());
			$display("da: %p",c1.da);
		end
endmodule


*/

//========================================
/*



class constraint_13;
	rand int da[];
	constraint c1{da.size == 12;}
	constraint c2{foreach(da[i])
			da[i] == ((i%3) + 1); }
endclass

constraint_13 c1;

module test();
	initial
		begin
			c1=new();
			assert(c1.randomize());
			$display("da: %p",c1.da);
		end
endmodule


*/

//========================================
/*


class constraint_14;
	rand int da[];
	constraint c1{da.size == 12;}
	constraint c2{foreach(da[i])
			if(i % 3 == 0)
				da[i] == 1;
			else
				da[i] == 0; }
endclass

constraint_14 c1;

module test();
	initial 
		begin
			c1=new;
			assert(c1.randomize());
			$display("da: %p",c1.da);
		end
endmodule



*/

//========================================
/*



class constraint_15;
	rand int da[];
	constraint c1{da.size == 15;}
	constraint c2{foreach(da[i])
			if(i % 3 == 2)
				da[i] == i / 3 + 1;
			else
				da[i] == 0; }
endclass

constraint_15 c1;

module test();
	initial
		begin
			c1=new();
			assert(c1.randomize());
			$display("da: %p",c1.da);
		end
endmodule


*/

//========================================
/*



class constraint_16;
	rand int da[];
	constraint c1{da.size == 15;}
	constraint c2{foreach(da[i])
			if(i%4==0 || i%4==3)
				da[i] == 1;
			else 
				da[i] == 2; }
endclass

constraint_16 c1;

module test();
	initial
		begin
			c1=new;
			assert(c1.randomize());
			$display("da: %p",c1.da);
		end
endmodule


*/

//========================================
/*



class constraint_12;
	rand int da[];
	constraint c1{da.size == 12;}
	constraint c2{foreach(da[i])
			if(i==0)
				da[i] == 0;
			else if(i==1)
				da[i] == 1;
			else
				da[i] == da[i-2] + da[i-1]; }
endclass

constraint_12 c1;

module test();
	initial
		begin
			c1=new;
			assert(c1.randomize());
			$display("da: %p",c1.da);
		end
endmodule


*/

//========================================
/*


class constraint_19;
	rand int da[];
	constraint c1{da.size == 10;}
	constraint c2{foreach(da[i])
			if(i%2 == 0)
				da[i] == 5 * (i+1);
			else
				da[i] == -5 * (i+1); }

endclass


constraint_19 c1;

module test();
	initial
		begin
			c1=new;
			assert(c1.randomize());
			$display("da: %p",c1.da);
		end		
		
endmodule



*/

//========================================
/*

class constraint_17;
	rand int da[];
	constraint c1{da.size == 10;}
	constraint c2{foreach(da[i])
			if(i%2 == 0)
				da[i] == 0;
			else
				da[i] inside {[1:9]}; }
endclass

constraint_17 c1;

module test();
	initial
		begin
			repeat(5)
				begin
					c1=new;
					assert(c1.randomize());
					$display("da: %p",c1.da);
				end
		end
endmodule



*/

//========================================
/*



class constraint_11;
	rand bit [3:0] da[];
	constraint c1{da.size == 10;}
	constraint c2{foreach(da[i])
			if(i%2 == 0)
				da[i]%2 == 1;
			else if(i%2 == 1)
				da[i]%2 == 0; }
endclass

constraint_11 c1;

module test();
	initial
		begin
			repeat(5)
				begin
					c1=new;
					assert(c1.randomize());
					$display("da: %p",c1.da);
				end
		end
endmodule 


*/

//========================================
/*


class constraint_18;
	rand int da[];
	constraint c1{da.size == 10;}
	constraint c2{foreach(da[i])
			if(i == 0)
				da[i] == 0;
			else
				da[i] == da[i-1] + 5; }
endclass

constraint_18 c1;

module test();
	initial
		begin
			c1=new;
			assert(c1.randomize());
			$display("da: %p",c1.da);
		end
endmodule


*/

//========================================
/*

class constraint_20;
	rand int fixed[15];
	rand int da[];
	rand int queue[$];
	constraint c1{da.size == 15;
			queue.size == 15;}
	constraint c2{foreach(fixed[i])
			fixed[i] inside {[15:60]} && fixed[i]%2==0;}

	constraint c3{foreach(da[i])
			da[i] inside {[15:60]} && da[i]%2==0;}
	constraint c4{foreach(queue[i])
			queue[i] inside {[15:60]} && queue[i]%2==0;} 
endclass

constraint_20 c1;

module test();
	initial
		begin
			c1=new;
			assert(c1.randomize());
			$display("fixed: %p, da: %p, queue: %p",c1.fixed,c1.da,c1.queue);
		end
endmodule





*/

//========================================
/*



class constraint_27;
	rand int da[];
	constraint c1{da.size == 6;}
	constraint c2{foreach(da[i])
			da[i] inside {[1:9]};}
	constraint c3{unique {da};}	
	constraint c4{(da.sum() % 3) == 0;}
endclass
constraint_27 c1;
module test();
	initial
		begin
			repeat(3)
				begin
					c1=new;
					assert(c1.randomize());
					$display("da: %p",c1.da);
				end
		end
endmodule


*/

//========================================
/*


class constraint_26;
	rand int da[];
	rand int a;
	constraint c1{da.size == 6;}
	constraint c2{a inside {[20:30]};}
	constraint c3{foreach(da[i])
			if(i==0)
				da[i] == a;
			else
				da[i] == da[i-1] - 3; }
endclass
constraint_26 c1;
module test();
	initial
		begin
			repeat(3)
				begin
					c1=new;
					assert(c1.randomize());
					$display("da: %p",c1.da);
				end
		end
endmodule



*/

//========================================
/*


class constraint_28;
	rand int count;
	constraint c1{(count%3 == 0) && (count%5 == 0) && (count%2 != 0);}
	constraint c2{count inside {[30:150]};}
endclass
constraint_28 c1;
module test();
	initial
		begin
			repeat(5)
				begin
					c1=new;
					assert(c1.randomize());
					$display("count=%d",c1.count);
				end
		end
endmodule



*/

//========================================
/*



class constraint_29;
	rand int da[];
	constraint c1{da.size == 10;}

	//method 1
	/*constraint c2{foreach(da[i])
			if(i==0)
				da[i] == 1;
			else if(i==9)
				da[i] == 1;
			else
				da[i] == 0; }
	*/
	
	//method 2
	/* 
    constraint c2{foreach(da[i])
			if(i%9 == 0)
				da[i] == 1;
			else 
				da[i] == 0; }
endclass
constraint_29 c1;
module test();
	initial
		begin
			c1=new;
			assert(c1.randomize());
			$display("da: %p",c1.da);
		end
endmodule 


*/

//========================================
/*


class constraint_21;
	int prime_num[$];
	rand int da[];
	constraint c1{da.size == 100;}
	constraint c2{foreach(da[i])
			da[i] == prime_fun(i); }

	function int prime_fun(input int i);
		if(i>1 && (! ((i%2 == 0 && i!=2) || (i%3==0 && i!=3) || (i%5==0 && i!=5) || (i%7==0 && i!=7))))
			return i;
		else
			return 0;
	endfunction

	function void post_randomize();
		foreach(da[i])
			begin
				if(da[i] != 0)
					begin
						prime_num.push_back(da[i]);
					end
			end
	endfunction		
endclass
constraint_21 c1;
module test();
	initial
		begin
			c1=new;
			assert(c1.randomize());
			$display("da: %p",c1.da);
		end
endmodule



*/

//========================================
/*




class constraint_22;
	rand int a[];
	rand int b[];
	
	constraint c1{a.size == 10; b.size == 10;}
	
	constraint c2{foreach(a[i])
			a[i] inside {[1:50]};
		      foreach(b[i])
			b[i] inside {[1:50]};}

	constraint ascending_order{foreach(a[i])
					if(i>0)
						a[i] > a[i-1]; }
	
	constraint descending_oredr{foreach(b[i])
					if(i>0)
						b[i] < b[i-1]; }

endclass
constraint_22 c1;
module test();
	initial
		begin
			c1=new;
			assert(c1.randomize());
			$display("ASCENDING ORDER: %p",c1.a);
			$display("DESCENDING ORDER: %p",c1.b);
		end
endmodule


*/

//========================================
/*



class constraint_30;
	rand bit [7:0] a;
	constraint c2{(a%4==0) && (a%8!=0);}
endclass
constraint_30 c1;
module test();
	initial
		begin
			repeat(5)
				begin
					c1=new;
					assert(c1.randomize() with {a>100 && a<200;});
					$display("a: %d",c1.a);
				end
		end
endmodule


*/

//========================================
/*


class constraint_23;
	rand int arr[5][6];
	int i;
	
	constraint c1{foreach(arr[i])
			foreach(arr[i][j])
				arr[i][j] inside {[1:100]};}
	
	constraint c2{foreach(arr[i])
			foreach(arr[i][j])
				arr[i][5] == arr[i][0] + arr[i][1] + arr[i][2] + arr[i][3] + arr[i][4];

			}

endclass
constraint_23 c1;
module test();
	initial
		begin
			c1=new;
			assert(c1.randomize());
			$display("arr: %p",c1.arr);
		end
endmodule



*/

//========================================
/*



class constraint_24;
	rand int da[];
	constraint c1{da.size == 10;}
	constraint c2{foreach(da[i])
			da[i] inside {[0:20]};}
	constraint c3{(da.sum() % 5) == 0;}
endclass
constraint_24 c1;
module test();
	initial
		begin
			repeat(3)
				begin
					c1=new;
					assert(c1.randomize());
					$display("da: %p",c1.da);
				end
		end
endmodule 
	


*/

//========================================
/*



class constraint_25;
	rand int da[];
	constraint c1{da.size == 6;}
	constraint c2{foreach(da[i])
			da[i] inside {[0:10]};}
	constraint c3{da.sum() == 30;}
endclass
constraint_25 c1;
module test();
	initial
		begin
			repeat(3)
				begin
					c1=new;
					assert(c1.randomize());
					$display("da: %p",c1.da);
				end
		end
endmodule



*/

//========================================
/*



*/

//========================================
/*


class constraint_31;
	rand int da[];
	constraint c1{da.size==10;}
	constraint c2{foreach(da[i])
			da[i] inside {[0:5]};}
	constraint c3{foreach(da[i])
				if(i<9 && da[i] == 0)
					da[i+1] == 1;}
endclass
constraint_31 c1;
module test();
	initial
		begin
			repeat(10)
				begin
					c1=new;
					assert(c1.randomize());
					$display("da: %p",c1.da);
				end
		end
endmodule
				



*/

//========================================
/*



class constraint_32;
	rand int da[];
	constraint c1{da.size == 8;}
	constraint c2{foreach(da[i])
			da[i] inside {[1:5]};}
	constraint c3{foreach(da[i])
			da[i] == da[da.size() - 1 - i]; }
endclass
constraint_32 c1;
module test();
	initial
		begin
			repeat(10)
				begin
					c1=new;
					assert(c1.randomize());
					$display("da: %p",c1.da);
				end
		end
endmodule


*/

//========================================
/*


class constraint_33;
	rand bit[4:0]hour;
	rand bit[5:0]minute;
	rand bit[5:0]second;
	constraint c1{hour inside {[0:23]};}
	constraint c2{minute inside {[0:59]};}
	constraint c3{second inside {[0:59]};}
endclass
constraint_33 c1;
module test();
	initial
		begin
			repeat(5)
				begin
					c1=new;
					assert(c1.randomize());
					$display("%d:%d:%d",c1.hour,c1.minute,c1.second);
				end
		end
endmodule



*/

//========================================
/*



class constraint_34;
	rand int date,month,year;
	constraint c1{month inside {[1:12]};}
	constraint c2{ if(month inside {1,3,5,7,8,10,12})
				date inside {[1:32]};
			else if(month == 2)
				{if((year%4 == 0 && year%100 != 0) || (year % 400 == 0))
					date inside {[1:30]};
				 else
					date inside {[1:28]}; }
			else 
				date inside {[1:30]}; }
	constraint c3{year inside {[1000:3000]};}
endclass
constraint_34 c1;
module test();
	initial 
		begin
			repeat(5)
				begin
					c1=new;
					assert(c1.randomize());
					$display("%d:%d:%d",c1.date,c1.month,c1.year);
				end
		end
endmodule


*/

//========================================
/*




class constraint_35;
	rand bit [7:0]y;
	constraint c1{$countones(y) == 1;}
endclass
constraint_35 c1;
module test();
	initial
		begin
			repeat(8)
				begin
					c1=new;
					assert(c1.randomize());
					$display("y=%b",c1.y);
				end
		end
endmodule

*/

//========================================

/*



class constraint_36;
	rand int da[];
	constraint c1{da.size == 10;}
	constraint c2{foreach(da[i])
			da[i] inside {[0:50]};}
	constraint c3{foreach(da[i])
			if(i>0)
				da[i] > da[i-1]; }
endclass
constraint_36 c1;
module test();
	initial
		begin
			repeat(5)
				begin
					c1=new;
					assert(c1.randomize());
					$display("da: %p",c1.da);
				end
		end
endmodule

*/

//========================================

/*


class constraint_37;
	rand int da[];
	constraint c1{da.size == 10;}
	constraint c2{foreach(da[i])
			da[i] inside {[0:20]};}
	constraint c3{foreach(da[i])
			if(i>0)
				da[i] != da[i-1]; }
endclass
constraint_37 c1;
module test();
	initial
		begin
			repeat(5)
				begin
					c1=new;
					assert(c1.randomize());
					$display("da: %p",c1.da);
				end
		end
endmodule

*/

//========================================
/*



class constraint_38;
	rand int number[];
	constraint c1{number.size == 10;}
	constraint c2{number[0] != 0;}
	constraint c3{foreach(number[i])
			number[i] inside {[0:9]};}

	function void print();
		$display("+91-%d%d%d%d%d%d%d%d%d%d",number[0],number[1],number[2],number[3],number[4],number[5],number[6],number[7],number[8],number[9]);
	endfunction
endclass
constraint_38 c1;
module test();
	initial
		begin
			repeat(5)
				begin
					c1=new;
					assert(c1.randomize());
					c1.print();
				end
		end
endmodule


*/

//========================================
/*


class constraint_39;
	rand int da[];
	constraint c1{da.size == 10;}
	constraint c2{foreach(da[i])
			da[i] inside {[0:20]};}
	constraint c3{(da[0] + da[2] + da[4] + da[6] + da[8]) == (da[1] + da[3] + da[5] + da[7] + da[9]);}  
endclass
constraint_39 c1;
module test();
	initial
		begin
			repeat(5) 
				begin
					c1=new;
					assert(c1.randomize());
					$display("da: %p",c1.da);
				end
		end
endmodule



*/

//========================================
/*



class constraint_40;
	rand int da[];
	constraint c1{da.size == 4;}
	constraint c2{foreach(da[i])
			da[i] inside {[0:9]};}
	constraint c3{da.sum() == 10;}
endclass
constraint_40 c1;
module test();
	initial
		begin
			repeat(5)
				begin
					c1=new;
					assert(c1.randomize());
					$display("da: %p",c1.da);
				end
		end	
endmodule


*/

//========================================
/*
 


class constraint_41;
	rand bit[4:0]a;
	constraint c1{a<20;}
	constraint c2{a%4 == 0;}
endclass
constraint_41 c1;
module test();
	initial
		begin
			repeat(5)
				begin
					c1=new;
					assert(c1.randomize());
					$display("a=%d",c1.a);
				end
		end
endmodule



*/

//========================================
/*



class constraint_42;
	rand bit[3:0] da[];
	constraint c1{da.size == 5;}
	constraint c2{foreach(da[i])
			da[i] == 5 - i;}
endclass
constraint_42 c1;
module test();
	initial
		begin
			c1=new;
			assert(c1.randomize());
			$display("da: %p",c1.da);
		end
endmodule


*/

//========================================
/*

class constraint_43;
	rand bit[7:0] da[];
	constraint c1{da.size == 5;}
	constraint c2{foreach(da[i])
			da[i] == (i+1)**2;}
endclass
constraint_43 c1;
module test();
	initial
		begin
			c1=new;
			assert(c1.randomize());
			$display("da: %p",c1.da);
		end
endmodule




*/

//========================================
/*


class constraint_44;
	rand int da[];
	constraint c1{da.size == 5;}
	constraint c3{foreach(da[i])
			da[i] == 2**(i+3);}
endclass
constraint_44 c1;
module test();
	initial	
		begin
			c1=new;
			assert(c1.randomize());
			$display("da: %p",c1.da);
		end
endmodule



*/

//========================================
/*



class constraint_45;
	rand bit[7:0]a;
	constraint c1{a%3==0;}
	constraint c2{$countones(a) == 0 || $countones(a) == 2 || $countones(a) == 4 || $countones(a) == 4 || $countones(a) == 6 || $countones(a) == 8;}
endclass
constraint_45 c1;
module test();
	initial
		begin
			repeat(5)
			begin
				c1=new;
				assert(c1.randomize());
				$display("a: %b",c1.a);
			end
		end
endmodule


*/

//========================================
/*




class constraint_46;
	rand bit[4:0]a;
	constraint c1{a inside {[0:31]};}
	constraint c2{(a%4 == 0) && (a%6 != 0);}
	constraint c3{unique {a};}
endclass
constraint_46 c1;
module test();
	initial
		begin
			repeat(5)
				begin
					c1=new;
					assert(c1.randomize());
					$display("a: %d",c1.a);
				end
		end
endmodule

*/

//========================================
/*



class constraint_47;
	rand int a;
	constraint c1{a inside {[1:50]};}
	constraint c2{a%2 !=0 && a%3!=0 && a%5!=0;}
endclass
constraint_47 c1;
module test;
	initial 
		begin
			repeat(10)
				begin
					c1=new;
					assert(c1.randomize());
					$display("a: %d",c1.a);
				end
		end
endmodule


*/

//========================================
/*



class constraint_48;
	rand int da[];
	constraint c1{da.size == 6;}
	constraint c2{foreach(da[i])
			da[i] inside {[10:20]};}
	constraint c3{da.sum() == 100;}
endclass
constraint_48 c1;
module test();
	initial
		begin
			repeat(3)
				begin
					c1=new;
					assert(c1.randomize());
					$display("da: %p",c1.da);
				end
		end
endmodule


*/

//========================================
/*


class constraint_49;
	rand int da[];
	constraint c1{da.size == 10;}
	constraint c2{foreach(da[i])
			da[i] inside {[0:20]};}
	constraint c3{da.sum()%2 == 0;}
endclass
constraint_49 c1;
module test();
	initial 
		begin
			repeat(5)
				begin
					c1=new;
					assert(c1.randomize());
					$display("da: %p",c1.da);
				end
		end
endmodule



*/

//========================================
/*



class constraint_50;
	rand bit[7:0] da[];
	constraint c1{da.size == 10;}
	constraint c2{foreach(da[i])
			if(i==0 || i==da.size-1)
				da[i]%2 == 0;
			else
				da[i] inside {[1:10]};}
endclass
constraint_50 c1;
module test();
	initial
		begin
			repeat(5)
				begin
					c1=new;
					assert(c1.randomize());
					$display("da: %p",c1.da);
				end
		end
endmodule


*/

//========================================
/*



*/

//========================================
/*



*/

//========================================
/*



*/







