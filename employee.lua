-- Create a class with my class library.
employee = class();

-- Set initializer.
function employee:init(firstName,lastName,dependents,hours)
    -- Base variables for the class. (the x or y is if x doesnt exist, it goes to a default value.)
    self.firstName = firstName or "";
    self.lastName = lastName or "";
    self.dependents = dependents or 0;
    self.hours = hours or 0;

    -- Calculated variables

    -- Grossing without overtime
    self.gross = math.min(hours,40)*pay;

    -- Grossing with overtime
    self.overtime = math.max(hours-40,0)*pay*1.5;

    -- Before tax
    self.preTax = self.gross+self.overtime;

    -- The tax itself
    self.tax = (self.preTax*stateTax*federalTax)-self.preTax;

    -- After tax is applied
    self.postTax = self.preTax-self.tax;
end