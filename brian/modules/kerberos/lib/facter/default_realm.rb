require 'augeas'
Facter.add("default_realm") do
  setcode do
    Augeas::open do |aug|
      aug.set('/files/etc/krb5.conf/libdefaults/default_realm')
    end
  end
end
