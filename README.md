# correlation_x_y

You want to assess correlation between 2 variables and get the equation ?

Just instantiate Correlation class with 1 array of data from each variable.

Example:

 advertising_costs = [58, 59, 62, 65, 63, 72, 75, 77]
 
 sales = [290, 300, 310, 321, 315, 332, 340, 350]
 
 correlation = Correlation.new(advertising_costs, sales)
 
 As a result, you get a correlation object to access parameters and the equation definition
 
 correlation.dependance
 correlation.equation.definition
 correlation.parameters.a
 correlation.parameters.b
 correlation.parameters.coefficient
 correlation.serie_a.data
 correlation.serie_a.size
 correlation.serie_b.data
 correlation.serie_b.size
 
 Then given x you can forecast y
 
 Thanks
 






