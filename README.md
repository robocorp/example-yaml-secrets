# Example of using YAML format Vault file

There are two possible ways of running the example task, with JSON formatted or with YAML formatted, Vault file. Both ways render same results. The environment file I am using here is also in YAML format.

rcc run -e devdata/env_json_vault.yaml

rcc run -e devdata/env_yaml_vault.yaml

Big benefit of YAML formatted Vault file is that the format is more "friendly" compared to JSON format. You don't need to quote strings or surround items with brackets.

YAML format also allows to create file with `# comments` with obvious benefits when you compared included `secrets.json` with `secrets.yaml`.
