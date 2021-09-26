function [roomtemp] = tempAmbiente(alignment);
roomtemp=[mean(alignment(find(alignment<=(min(min(alignment))+min(min(alignment))*0.01))))*(140/65536)-20];
end

