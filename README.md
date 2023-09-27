# azure-tf-static-website
This is a simple terraform script to setup an azure static website with serverless function backend. The deployed website has fb and google trackers, provided as is for learning how to deploy cookie consent banner to block 3rd party user tracking. Only for learning purposes. See `src/clinic-website` for the static website, and `src/api` for azure serverless function backend apis (written in node v16). The fb tracker is in `src/clinic-website/js/tracker.js` and the google tracker code is embeded in `src/clinic-website/pages/header.html`. 

The script requires `terraform`, `az-cli` and `swa` commands installed on the machine. These can be installed with `pip` and `npm` respectively. 

```shell
# Install and login to azure cli
% pip install azure-cli && echo PATH=\$PATH:\$HOME/.local/bin >> ~/.bashrc && bash -l
% az login --use-device-code

# Install npm, swa-cli
% brew install node
% npm install -g @azure/static-web-apps-cli

# Clone repo and Initialize/Run terraform
% git clone https://github.com/amitgupta7/azure-tf-static-website.git
% cd azure-tf-static-website
% source tfAlias
% tf init
% tfaa
# ...
# null_resource.deployment (local-exec): ✔ Project deployed to https://white-sand-0c1fb831e.3.azurestaticapps.net 🚀
# null_resource.deployment: Creation complete after 23s [id=3986767701860863060]
# Apply complete! Resources: 3 added, 0 changed, 0 destroyed.
# Outputs:
# url = "https://white-sand-0c1fb831e.3.azurestaticapps.net"
# ...

## Any local changes can be deployed by running tfaa again ##
## Creeate a pull request if you find any bugs or require enhancements ##

# Destroy the resources and static website.
% tfda
```
