### az azure-cli

az login --service-principal -u <app-id> -p <password-or-cert> --tenant <tenant>

# https://learn.microsoft.com/en-us/azure/role-based-access-control/built-in-roles
# roles: reader, contributor, owner etc.
az ad sp create-for-rbac --name myServicePrincipalName1 \
                         --role reader \
                         --scopes /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myRG1