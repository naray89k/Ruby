#! /usr/bin/env ruby

# Ruby uses short-circuit evaluation when it is handling
# multiple condition in loops.

def authenticate_agent(rank, name, credentials)
  if (rank == "007" && name == "James Bond") || credentials == "Secret Agent"
    puts "Access granted, Please proceed to Intelligence department"
  else
    puts "Access Denied, #{name}"
  end
end

code = "009"
agent_name = "Shane Bond"
role = "Secret Agent"

authenticate_agent(code, agent_name, role)
