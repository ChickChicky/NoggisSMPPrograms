local bank = {}

local bankId

function bank.setBankId( id )
    bankId = id
end

function bank.fetchBankId( providerName )
    rednet.broadcast( { provider=providerName }, 'bank_discovery_request' )
    local id, msg, proto = rednet.receive( 'bank_discovery_response:'..providerName, 5000 )
    if not id then
        return false
    end
    bankId = id
    return true
end

---Attempts to withdraw some amount of money from the bank
---@param account string
---@param passcode string
---@param amount number
function bank.withdraw( account, passcode, amount )
    assert(type(account) == 'string', '')
end

return bank