
## To serve locally


```
jekyll serve --baseurl ""
```
(`--baseurl ""` removes the base url (stored in _config.yml and must match the repo name))

## Build and push to gh-pages:


```bash
jekyll build
ghp-import -p -n _site
```



I imported the slides from the pptx HS20 with the [pptx2md](https://github.com/ssine/pptx2md) library:


## Coding in GIS II

```bash
pptx2md ../../HS2020/Vorlesung/03_Coding_in_GIS_II/Vorlesung/AGI_HS19_06_Coding_in_GIS_II.pptx -o Coding_in_GIS_II/index.md --disable-escaping
```

