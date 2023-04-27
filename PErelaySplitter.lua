local i = 0

while true do

    sleep(1)

    local stars = {}

    local relays = { peripheral.find('projecte:relay_mk3') }

    for k, relay in pairs(relays) do
        local item = relay.getItemDetail(22)
        table.insert(stars,(item or {durability=-1}).durability or 0)
    end

    local chest = peripheral.find('minecraft:barrel')

    term.clear()
    term.setCursorPos(1,1)

    for k, star in pairs(stars) do
        if star == -1 then
            print(k, '[No star]')
        else
            print(k, tostring(math.floor(star * 100 * (10^5))/(10^5))..'%')
        end
    end

    local nonFullRelays = {}

    for k, relay in pairs(relays) do
        local item = relay.getItemDetail(22)
        if item and (item.durability or 0) < 1 then
            table.insert(nonFullRelays, relay)
        end
    end

    while true do
        local items = chest.list()
        for slot, item in pairs(items) do
            for n = 1, item.count do
                i = i + 1
                local relay = nonFullRelays[i%#nonFullRelays+1]
                relay.pullItems(peripheral.getName(chest),slot,1)
            end
        end
        if #items == 0 then
            break
        end
    end

end