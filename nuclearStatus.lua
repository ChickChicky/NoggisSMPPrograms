local chatBox     = peripheral.find"chatBox"
local energy      = peripheral.find"energyDetector"
local environment = peripheral.find"environmentDetector"

while true do
    
    local evt, username, message, uuid, hidden = os.pullEvent"chat"

    if username == "Chick_Chicky" then
        
        local radiation = environment.getRadiationRaw()
        local transferRate = energy.getTransferRate()

        chatBox.sendFormattedMessage('Radiation: '..tostring(radiation)..'\nEnergy Transfer: '..tostring(transferRate),'NuclearMonitor','[]')

    end

end