



kubectl -n ui get secret $(kubectl -n ui get sa/admin-user -o jsonpath="{.secrets[0].name}") -o go-template="{{.data.token | base64decode}}"


