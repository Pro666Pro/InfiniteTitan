wait(2)

for i, v in pairs(game:GetService("ReplicatedStorage")._NETWORK:GetChildren()) do
	    -- Check if the name contains the character '{'
	    if v.Name:find("{") then
	        local args = {
	            [1] = "Titan"
	        }
	
	        -- Check if v is a RemoteEvent and can FireServer
	        if v:IsA("RemoteEvent") then
	            v:FireServer(unpack(args))
	        elseif v:IsA("RemoteFunction") then
	            -- If it's a RemoteFunction, use InvokeServer
	            local result = v:InvokeServer(unpack(args))
	            print("Result from InvokeServer:", result)  -- Optional: Print the result
	        else
	            print("v is neither a RemoteEvent nor a RemoteFunction.")
	        end
	    end
	end

wait(0.3)
  
local args = {
    [1] = "Transform"
}

game:GetService("ReplicatedStorage").GeneralAbility:FireServer(unpack(args))

wait(0.3)

fireclickdetector(workspace.Lobby["Diamond"].ClickDetector)

wait(0.15)

game:GetService("ReplicatedStorage"):WaitForChild("Rockmode"):FireServer()

wait(2)

game:GetService("ReplicatedStorage"):WaitForChild("DeactivateRockmode"):FireServer()
