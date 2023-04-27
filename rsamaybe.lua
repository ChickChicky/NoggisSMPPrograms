local rsa = require"rsaLib"

local rsa_public_key, rsa_priv_key, err = rsa:generate_rsa_keys(2048)

if not rsa_public_key then
    print('generate rsa keys err: ', err)
end

print(rsa_public_key)
print(rsa_priv_key)