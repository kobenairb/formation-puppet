Puppet::Parser::Functions.newfunction(:homedir,
                                      :type => :rvalue,
                                      :arity => 1,
                                      :doc => 'dfgjdlfgjdlfgjdlgk'
                                     ) do |args|
  user = args[0]
  raise ArgumentError, "Expects a string" unless user.class == String

  case user
  when 'root'
    return '/root'
  else
    return "/home/#{user}"
  end
end
