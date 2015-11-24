$zipFile = "..\_package\package.zip"
$appServiceName = '$NodeJsQuickStartApiApp'
$serverUrl = "https://waws-prod-bay-033.ftp.azurewebsites.windows.net/msdeploy.axd"
$pwd = 'PASSWORD'

msdeploy.exe –verb:sync -source:package=$zipFile -dest:contentPath='$appServiceName',ComputerName="$serverUrl?site=$appServiceName",UserName=$appServiceName,Password=@pwd,AuthType='Basic'