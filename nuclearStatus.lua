local chatBox     = peripheral.find"chatBox"
local energy      = peripheral.find"energyDetector"
local environment = peripheral.find"environmentDetector"

while true do
    
    local evt, username, message, uuid, hidden = os.pullEvent"chat"

    print(username,message,uuid,hidden)

end