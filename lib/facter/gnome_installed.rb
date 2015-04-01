#Fact to determine if gnome-desktop is installed. Returns true if it is. This is used to determine if we need to install the nox vmware tools
#Kevin Hrpcek

Facter.add('gnome_installed') do
  setcode do
    #if system('rpm -q gnome-desktop')== false
    if Facter::Core::Execution.exec('rpm -q gnome-desktop')== false
      gnome_installed = "true"
    else
      gnome_installed = "false"
    end
  end
end
