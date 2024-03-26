local function main()
  Training.setProcessingDelay( 2000 )
end
Script.register( "Engine.OnStarted", main )

--- Log after processing finished
---@param numberOfDataCodes int total number of found data codes
local function handleOnProcessingFinished( numberOfDataCodes )
  local string2Log = "Processing finished! Found " .. numberOfDataCodes .. " data code"
  if ( numberOfDataCodes ~= 1 ) then
    string2Log = string2Log .. "s"
  end
  Log.severe( string2Log .. " in total ..." )
end
Script.register( "Training.OnProcessingFinished", handleOnProcessingFinished )
