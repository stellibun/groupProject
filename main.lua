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
    employee.new("John","Doe",0,38);
    employee.new("Jane","Smith",0,45);
    employee.new("Mike","Brown",0,40);
    employee.new("Sarah","Lee",0,50);
    employee.new("David","Clark",0,30);
    employee.new("Lisa","Green",0,42);
    employee.new("James","White",0,60);
    employee.new("Maria","Lopez",0,35);
    employee.new("Kevin","Hall",0,48);
    employee.new("Emma","Wilson",0,20);
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