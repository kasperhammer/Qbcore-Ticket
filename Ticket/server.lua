---------------------------------------------------------------------------
-- Giv bøde til spiller --
---------------------------------------------------------------------------

local QBCore = exports['qb-core']:GetCoreObject()
local call_index = 0

RegisterCommand("ticket", function(source, args, raw)

    if args[1] == nil then
        print("No ID was supplied.")
      return
    end
    if args[2] == nil then
        print("No AMOUNT was supplied.")
      return
    end
  
   ticketAmount = tonumber(args[2])
    local xPlayer = QBCore.Functions.GetPlayer(tonumber(args[1])) 
 


      

      if xPlayer == nil then
        TriggerClientEvent('chatMessage', -1, '^7[^1Spiller eksistere ikke^7]^2', {0,0,0} --[[ this table is just rgb ]], param)
      else
        
        
    
    local NPlayer = QBCore.Functions.GetPlayer(source)
   
   
    if NPlayer.PlayerData.job.name == 'police' then
        local src = source
   
               
            bankAmount = xPlayer.PlayerData.money["bank"]
            savingsamount = xPlayer.PlayerData.saving

           
            print(savingsamount)
            amountleft = bankAmount - ticketAmount
         
           
               
		
                xPlayer.Functions.RemoveMoney("bank", tonumber(ticketAmount), "politi bøde")
             
               
                TriggerClientEvent('chatMessage', -1, '^7[^1Person fik en bøde på '.. ticketAmount ..' KR ^7]^2', {0,0,0} --[[ this table is just rgb ]], param)
		
           
    end


   
end
end)
    


