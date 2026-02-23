-- Require the modules.
require("class");
require("employee");
require("list");
require("stellib");
require("functions");

-- Our base variables
stateTax = 1.056;
federalTax = 1.079;
pay = 21.25;

-- The base employees
employees = {--   Name, LastName, Dependents, HoursWorked
    employee.new("John","Doe",1,38);
    employee.new("Jane","Smith",3,45);
    employee.new("Mike","Brown",1,40);
    employee.new("Sarah","Lee",2,50);
    employee.new("David","Clark",0,30);
    employee.new("Lisa","Green",2,42);
    employee.new("James","White",3,60);
    employee.new("Maria","Lopez",2,35);
    employee.new("Kevin","Hall",0,48);
    employee.new("Emma","Wilson",1,20);
};

local running = true;

while running do
    clear();
    print("Would you like to:\n[1]: Add someone to the table\n[2]: Compile the table\n[3]: Add someone, then compile\n[4]: Exit");
    local choice = io.read("n"); io.read("l");
    if choice == 1 then
        addPerson();
    elseif choice == 2 then
        compileTable();
    elseif choice == 3 then
        addPerson();
        compileTable();
    elseif choice == 4 then
        running = false;
    else
        clear();
        print("Invalid choice, please try again.");
    end
end