local p = peripheral.wrap"top"

while true do

    local a = false
    local b = false

    local pp = p.getPlayersInRange(50)

    for k, pl in pairs(pp) do
        if pl == 'Chick_Chicky' then
            a = true
        else
            b = true
        end
    end

    rs.setOutput('bottom',(not a) and b)

end