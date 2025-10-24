# Mise Buildkite Plugin

Activate Mise Environment
## Example

Add the following to your `pipeline.yml`:

```yml
steps:
  - command: ls
    plugins:
      - elastic/mise#v1.0.0
```