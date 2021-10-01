# Example of using YAML format Vault file

There are two possible ways of running the example task, with JSON formatted or with YAML formatted, Vault file. Both ways render same results. The environment file I am using here is also in YAML format.

Running the Robot with `secrets.json`
```shell
rcc run -e devdata/env_json_vault.yaml
```
Running the Robot with `secrets.yaml`
```shell
rcc run -e devdata/env_yaml_vault.yaml
```

Big benefit of YAML formatted Vault file is that the format is more "friendly" compared to JSON format. You don't need to quote strings or surround items with brackets.

YAML format also allows to create file with `# comments` with obvious benefits when you compared included `secrets.json` with `secrets.yaml`.

The `secrets.yaml`
```yaml
# Credentials for Cloud services
credentials:
    # Valid until next week
    google-apikey: '1234567890'
    # Remember that this a production instance
    sap-login: robot
    sap-password: secret
# Configuration for accessing Robocorp Control Room
robocorp:
    login: robot
    password: secret
    url: http://robocorp.com/
# The Robocorp's demo webstore
swaglabs:
    password: secret_sauce
    username: standard_user
# To access Windows desktop via RDP
windows:
    domain: windows
    login: robot
    password: secret
```

The `secrets.json`
```json
{
    "robocorp": {
        "url": "http://robocorp.com/",
        "login": "robot",
        "password": "secret"
    },
    "windows": {
        "domain": "windows",
        "login": "robot",
        "password": "secret"
    },
    "credentials": {
        "sap-login": "robot",
        "sap-password": "secret",
        "google-apikey": "1234567890"
    },
    "swaglabs": {
        "username": "standard_user",
        "password": "secret_sauce"
    }
}
```
