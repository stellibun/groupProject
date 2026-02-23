function addPerson()
    local function header(p)
        clear();
        print("You are adding someone to the table.");
        print(p);
        return io.read("l");
    end

    local fir = header("First name?");
    local las = header("Last name?");
    local dep = header("Number of dependents?");
    local hou = header("Weekly hours worked?");

    local f = io.open("additions","a+");
    f:write(((function() for l in f:lines() do return true; end return false; end)()and"\n"or"")..fir..":"..las..":"..dep..":"..hou);
    f:close();
    return;
end

function compileTable()
    clear();
    
    do
        -- Reading the extra employees (they save!)
        print("Opening additions file.");
        local f = io.open("additions","r");
        print("Adding to employees table.");
        for l in f:lines() do
            local e = string.split(l,":");
            employees[#employees+1] = employee.new(e[1],e[2],tonumber(e[3]),tonumber(e[4]));
        end
        f:close();
        print("Done!")
    end

    do
        -- Creating the table and file.
        print("Opening employees file.")
        local f = io.open("employees","w");
        print("Creating dynamic table and writing it to file.");
        f:write(createGrid(employees));
        f:close();
        print("Done!");
    end
    print("\nReturn to continue.")
    io.read("l");
    return;
end