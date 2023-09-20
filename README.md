# azure-tf-static-website

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
% echo "<h2>Some Message Here</h2>" >> ./src/index.html
% tfaa
# ...
# null_resource.deployment (local-exec): ✔ Project deployed to https://white-sand-0c1fb831e.3.azurestaticapps.net 🚀
# null_resource.deployment: Creation complete after 23s [id=3986767701860863060]
# Apply complete! Resources: 3 added, 0 changed, 0 destroyed.
# Outputs:
# url = "https://white-sand-0c1fb831e.3.azurestaticapps.net"
# ...

# Destroy the resources and static website.
% tfda
```
