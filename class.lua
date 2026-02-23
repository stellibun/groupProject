-- I'd explain this but it's slightly complicated, basically it just lets you create a class that inherits upper classes.

function class(super)
    local classTable = {};
    
    classTable.super = super or {};
    setmetatable(classTable,super);
    classTable.__index = classTable;

    function classTable.new(...)
        local obj = {};
        setmetatable(obj,classTable);
        if obj.init then
            return obj,obj:init(...);
        end
        return obj;
    end

    return classTable;
end