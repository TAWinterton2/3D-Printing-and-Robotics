
module standbase()
{
     difference(){
     cube([10, 4, 2]);
     translate([0, 1.8,1.5])
     cube([10, .5, 1]);  
    }
}

module standsupport()
{
    difference(){
        cube([1, 2, 5]);
        translate([0, .8, 0])
        cube([1, .5, 5]);
    
    }
}



module standsupports()
{  
    translate([0,1,0])
    standsupport();
    translate([9,1, 0])
    standsupport();
    
}


module standtext(text)
{
   linear_extrude(height = 1)
    {
        text(text, size = 1, halign = "center", valign = "center", $fn = 20);
    }
}

module displaystand()
{
    union()
    {
        standsupports();
       
            
        translate([5, .8, 1])
        rotate([90, 0, 0])
        standtext("My Precious");
    
        standbase();
    }
    
}
displaystand();