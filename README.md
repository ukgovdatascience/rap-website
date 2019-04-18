# rap-website [![Build Status](https://travis-ci.org/ukgovdatascience/rap-website.svg?branch=master)](https://travis-ci.org/ukgovdatascience/rap-website)

## Notes on contributing

* Travis will build the website for you, no need to push any rendered markdown content.
* Any dependencies needed to render the website must be added to the DESCRIPTION file. Packages from CRAN go into the `Imports:` section. Anything from github must go in both the `Imports:` and `Remotes:` section.
    ```yml
    Imports: rmarkdown,
      govdown
    Remotes: ukgovdatascience/govdown
    ```