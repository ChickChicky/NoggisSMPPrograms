local chatBox     = peripheral.find"chatBox"
local energy      = peripheral.find"energyDetector"
local environment = peripheral.find"environmentDetector"

while true do
    
    local evt, username, message, uuid, hidden = os.pullEvent"chat"

    if username == "Chick_Chicky" and message == "plz reactor status" then
        
        local rad = environment.getRadiation()
        local radiation = rad.radiation..rad.unit
        local transferRate = energy.getTransferRate()

        chatBox.sendMessage('Radiation: §a'..tostring(radiation)..'§r\nEnergy Transfer: §e'..tostring(transferRate)..'§r','NuclearMonitor','[]')

    end

end