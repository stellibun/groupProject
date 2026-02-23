function clear()
    os.execute("clear");
end

function string.split(str,sep)
   if sep == nil then sep = "%s"; end

   local t={};

   for str in string.gmatch(str,"([^"..sep.."]+)") do
      table.insert(t, str);
   end

   return t;
end