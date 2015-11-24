Login-AzureRmAccount
$templateFile = "create-app-and-app-plan.json"
$rgName = "QuickStartResources"
$planName = "QuickStartPlan"
$appName = "NodeJsQuickStartApiApp"

New-AzureRmResourceGroup -Name $rgName

New-AzureRmResourceGroupDeployment -ResourceGroupName $rgName -TemplateFile $templateFile -appServiceName $appName -appServicePlanLocation "West US" -appServicePlanName $planName -appServicePlanSkuName "F1" -appServicePlanSkuTier "Free" -appServicePlanSkuFamily "F" -appServicePlanSkuSize "F1"