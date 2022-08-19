
module ListEnum
def all(list)
    list.each do |item|  
        if((yield item) != true) then return "false" end 
    end
    "true"
end
end