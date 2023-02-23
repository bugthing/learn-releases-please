# learn-releases-please

This repo contains information about using a release branch strategy to track the building
of an application with source code stored in github. Built using linux containers.

Using:
* [github actions](https://www.github.com/)
* [conventional commits](https://www.conventionalcommits.org/)
* [release please](https://github.com/googleapis/release-please)

## Setup

* Ensure your GITHUB_TOKEN can create PRs by ticking the **Allow GitHub Actions to create and approve pull requests** box [here](https://github.com/bugthing/learn-releases-please/settings/actions)
* This uses an action that has a bug meaning you should not have capital letters in your GitHub username.

## Strategy

1. create a branch
1. create a pull request with complient commit
1. github checks the commit message is complient
1. if the commit is a PR, github builds the application (in container)
1. if the commit is a release message, github creates a pull request for the release

Code is delivered into `main` branch via pull requests.
Each pull requests must comply with conventional commits rules, summarised below:

```
<type>[optional scope]: <description>

[optional body]

[optional footer]
```

types to use include: `feat:` `chore:` `fix:`

### Examples

Commit message with description and breaking change in body

```
feat: allow provided config object to extend other configs

BREAKING CHANGE: `extends` key in config file is now used for extending other config files
```

Commit message with no body

```
docs: correct spelling of CHANGELOG
```

Commit message with scope

```
feat(lang): added spanish language
```

Commit message to trigger a release

```
chore: release
```
