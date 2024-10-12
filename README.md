# Practice Azure Bicep

- Install [Azure CLI](https://learn.microsoft.com/ja-jp/cli/azure/install-azure-cli-linux?pivots=apt) on WSL Ubuntu

```bash
$ curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash

$ sudo az version
{
  "azure-cli": "2.65.0",
  "azure-cli-core": "2.65.0",
  "azure-cli-telemetry": "1.1.0",
  "extensions": {}
}

$ sudo az login

$ sudo az bicep install
$ sudo az account list-locations
$ sudo az group create --name myResourceGroup --location japaneast
$ sudo az deployment group create --resource-group myResourceGroup --template-file main.bicep
```
