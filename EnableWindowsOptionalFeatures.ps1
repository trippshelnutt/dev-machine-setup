Enable-WindowsOptionalFeature -Online -FeatureName "NetFx3" -All -NoRestart
Enable-WindowsOptionalFeature -Online -FeatureName "WCF-HTTP-Activation45" -All -NoRestart
Enable-WindowsOptionalFeature -Online -FeatureName "WCF-TCP-Activation45" -All -NoRestart
Enable-WindowsOptionalFeature -Online -FeatureName "WCF-TCP-PortSharing45" -All -NoRestart
Enable-WindowsOptionalFeature -Online -FeatureName "IIS-Metabase" -All -NoRestart
Enable-WindowsOptionalFeature -Online -FeatureName "IIS-ManagementConsole" -All -NoRestart
Enable-WindowsOptionalFeature -Online -FeatureName "IIS-NetFxExtensibility45" -All -NoRestart
Enable-WindowsOptionalFeature -Online -FeatureName "IIS-ASPNET45" -All -NoRestart
Enable-WindowsOptionalFeature -Online -FeatureName "IIS-ISAPIFilter" -All -NoRestart
Enable-WindowsOptionalFeature -Online -FeatureName "IIS-ISAPIExtensions" -All -NoRestart
Enable-WindowsOptionalFeature -Online -FeatureName "IIS-DefaultDocument" -All -NoRestart
Enable-WindowsOptionalFeature -Online -FeatureName "IIS-HttpErrors" -All -NoRestart
Enable-WindowsOptionalFeature -Online -FeatureName "IIS-HttpRedirect" -All -NoRestart
Enable-WindowsOptionalFeature -Online -FeatureName "IIS-StaticContent" -All -NoRestart
Enable-WindowsOptionalFeature -Online -FeatureName "IIS-HttpLogging" -All -NoRestart
Enable-WindowsOptionalFeature -Online -FeatureName "IIS-HttpTracing" -All -NoRestart
Enable-WindowsOptionalFeature -Online -FeatureName "IIS-RequestFiltering" -All -NoRestart
Enable-WindowsOptionalFeature -Online -FeatureName "IIS-WindowsAuthentication" -All -NoRestart

Disable-WindowsOptionalFeature -Online -FeatureName "IIS-DirectoryBrowsing" -NoRestart
