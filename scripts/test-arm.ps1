# Prompt for appName and envName
$appName = Read-Host -Prompt "Enter the app name"
$envName = Read-Host -Prompt "Enter the environment name"

# Create a resource group
$rg = "rg-$appName-$envName"
$location = "eastus"  # You can change the location as needed

az group create --name $rg --location $location --tags env=$envName costCenter=demos

# Deploy the ARM template for an Azure WebApp
$templateFile = "infra/arm/mySite.json"  # Path to your ARM template file

az deployment group create --resource-group $rg --template-file $templateFile --parameters appName=$appName envName=$envName

# Parse the output
$planName = "$appName-$envName-plan" 
$siteName = "$appName-$envName-site" 

# Publish the app code from src/DadApp
cd src\DadApp
az webapp up --launch-browser --os-type linux --resource-group $rg --name $siteName --plan $planName --location $location 
cd ..\..



# Bicep

az bicep decompile -f infra/arm/mySite.json

$envName = "bicep"
$planName = "$appName-$envName-plan" 
$siteName = "$appName-$envName-site" 

az deployment sub create --location centralus --template-file ./infra/arm/main.bicep --parameters appName=$appName envName=$envName 

cd src\DadApp
az webapp up --launch-browser --os-type linux --resource-group $rg --name $siteName --plan $planName --location $location 
cd ..\..
