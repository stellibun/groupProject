local tab = {};
local order = {{"Id","id"},{"First name","firstName"},{"Last name","lastName"},{"Dependents","dependents"},{"Hours Worked","hours"},{"Grossing","gross"},{"Overtime Grossing","overtime"},{"Pre-tax","preTax"},{"Tax","tax"},{"Post-tax","postTax"},{"Post-credit","postCredit"}};
local list = "";

function loadLine()
    for _,v in ipairs(order) do
        v = tab[v[1]];
        for p=1,v.longestString do
            list = list.."-";
        end
        list = list.."+";
    end
end

function createGrid(t)
    tab = {};
    for o,v in ipairs(order) do
        tab[v[1]]={longestString=#v[1]};
        for i,p in ipairs(t) do
            local val = o==1 and i or p[v[2]];
            val = tostring(type(val) == "number" and string.format(o==1 and "%.2i" or "%.2f",val) or val);
            tab[v[1]].longestString = math.max(tab[v[1]].longestString,#val)
            tab[v[1]][i]=val;
        end
    end

    list = "+";

    for i=0,#t do
        loadLine();
        list = list.."\n|";
        for _,v in ipairs(order) do
            t = tab[v[1]];
            for p=1,t.longestString do
                t=i==0 and v or t;
                list = list..(#tostring(t[i==0 and 1 or i])>=p and string.sub(tostring(t[i==0 and 1 or i]),p,p) or " ");
            end
            list = list.."|";
        end
        list = list.."\n+";
    end
    loadLine();

    return list;
end