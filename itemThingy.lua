local input = peripheral.find("enderstorage:ender_chest")
local output = peripheral.find("minecraft:chest")

while true do
    
    local itemName = io.read()

    local itemSlot = nil

    for slot, item in pairs( input.list() ) do
        
        if item.name == itemName then
            itemSlot = slot
            break
        end

    end

    if itemSlot then
        output.pullItems( peripheral.getName(input), itemSlot )
    else
        print("Item nout found")
    end

end