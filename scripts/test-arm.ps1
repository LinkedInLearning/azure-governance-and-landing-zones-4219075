# Prompt for appName and envName
$appName = Read-Host -Prompt "Enter the app name"
$envName = Read-Host -Prompt "Enter the environment name"

# Create a resource group
$resourceGroupName = "rg-$appName-$envName"
$location = "eastus"  # You can change the location as needed

New-AzResourceGroup -Name $resourceGroupName -Location $location

# Deploy the ARM template for an Azure WebApp
$templateFile = "path/to/your/template.json"  # Path to your ARM template file
$templateParameters = @{
    "appName" = $appName
    "envName" = $envName
}

New-AzResourceGroupDeployment -ResourceGroupName $resourceGroupName -TemplateFile $templateFile -TemplateParameterObject $templateParameters

# Get the output of the deployment
$deployment = Get-AzResourceGroupDeployment -ResourceGroupName $resourceGroupName -Name (Get-AzResourceGroupDeployment -ResourceGroupName $resourceGroupName).DeploymentName
$planName = $deployment.Outputs.planName.value
$siteName = $deployment.Outputs.siteName.value

# Publish the app code from src/DadApp
az webapp up --name $siteName --resource-group $resourceGroupName --plan $planName --location $location --src-path src/DadApp
