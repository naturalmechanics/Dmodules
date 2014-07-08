module array_manip;

T[][] array_flatten(T)(T[][] arrin)
{
      int arr_e_c = 1;
      int j = 0;
      
      foreach(T[] a; arrin)
	  { arr_e_c = to!int(arr_e_c * a.count());
	  
	      j++;
	  }
      
      T[][] temp = new T[][](arr_e_c, j) ;
      
      Stdout.writeln("okey");
      
      
      int k = 1;
      int kk = j;
      int l = 0;
      
      int a = 0;
      int b = 0;
      
      
      foreach(T[] aa; arrin)
      {
	kk-- ;
	for(a = 0; a < arr_e_c; a)
	{
	  foreach(T a_; aa)
	  {
	    
	    for(l = 1; l <= k; l++)
	    {
		temp[b][kk] = a_;
		b++;
		a++;
	    }
	    
	  }
	}
	k = k * to!int(aa.count());
	  b = 0;
      
      }
      
      
      Stdout.writeln(temp);
      return temp;



}