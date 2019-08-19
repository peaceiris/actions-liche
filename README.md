[![license](https://img.shields.io/github/license/peaceiris/actions-liche.svg)](https://github.com/peaceiris/actions-liche/blob/master/LICENSE)
[![release](https://img.shields.io/github/release/peaceiris/actions-liche.svg)](https://github.com/peaceiris/actions-liche/releases/latest)
[![GitHub release date](https://img.shields.io/github/release-date/peaceiris/actions-liche.svg)](https://github.com/peaceiris/actions-liche/releases)



## GitHub Actions for liche

- [raviqqe/liche: Fast Link Checker for Markdown and HTML in Go](https://github.com/raviqqe/liche)

<img width="400" alt="GitHub Actions for liche" src="./images/ogp.svg">



## Getting started

### Create `main.workflow`

```hcl
workflow "Main workflow" {
  on = "push"
  resolves = ["liche"]
}

action "liche" {
  uses = "peaceiris/actions-liche@v0.1.0"
  args = ["-r", "./content"]
}
```



## License

[MIT License - peaceiris/actions-liche]

[MIT License - peaceiris/actions-liche]: https://github.com/peaceiris/actions-liche/blob/master/LICENSE



## About the author

- [peaceiris's homepage](https://peaceiris.com/)
