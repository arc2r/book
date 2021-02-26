
[![Actions
Status](https://github.com/arc2r/book/workflows/bookdown/badge.svg)](https://github.com/arc2r/book/actions)

# All things `R`-Spatial

This is the repo of a book we are currently working on and is hosted
here: [arc2r.github.io/book](https://arc2r.github.io/book/). Check this
website to see what this book is about. The rest of this readme is
dedicated to some meta-topics that we don't know where to place
otherwise.

## Style Guide

### Coding Style

Let's be specific about which libraries we actually need in every script (avoid `library(tidyverse)`). We haven't so much settled on a standard yet, but maybe using [style.tidyverse.org](https://style.tidyverse.org/) is a good start?

### Inline formatting

- formatting with **bold**, in the following cases:
  - dataset name (e.g **parking spots in the canton of Zurich**)
- formatting with *italics*, in the following cases:
  - referring to a tool (e.g `Select By Attributes`)
  - operation (e.g **spatial subsetting**)
- formatting with this `format`, in the following cases:
  - package name (e.g `sf`)
  - function name (e.g `st_buffer`)

### Adding notes

If you want to highlight something important, you can add [a custom
block](https://bookdown.org/yihui/bookdown/custom-blocks.html) in this
format: \`\`\``{block2, type = "rmdnote"}` (see example below). This
block will recieve the class "rmdnote", which is specified in
[css/style.css].

```` markdown
```{block2, type='rmdnote'}
Something very important we want to convey to our readers, written in Markdown.
```
````

### Subdividing into Parts

We can add Subdivision to our document by adding the following line at
the top of an Rmd-File

    # (PART) Topology Rules {-}

see [here](https://bookdown.org/yihui/bookdown/markdown-extensions-by-bookdown.html#special-headers)

### Citation

To cite a book or URL or whatever, add a appropriate bibtex entry to
[bibliography/general.bib]. You can then cite the document using the
reference \@key or [\@key].

[bibliography/packags.bib] is generated automatically from all the
packages in the DESCRIPTION of the book and the DESCRIPTION of the repo
arc2r/arc2r. For this reason, ALL items in these bibtex files are added
to the document, so only add entries for items we use in the book!

## Dependencies

To capture the various dependencies on r-Packages, we follow the
following logic (see also <https://github.com/arc2r/book/issues/9>):

| Priority | Dependency (Package Necessary to:)            | File        | Repo        | Field    | Eg.                      |
|----------|-----------------------------------------------|-------------|-------------|----------|--------------------------|
| 1        | Use the **data-package**                      | DESCRIPTION | arc2r/arc2r | Imports  | `sf`, `raster`           |
| 2        | To run the code described within **the book** | DESCRIPTION | arc2r/arc2r | Suggests | `gstat`, `tmap`, `dplyr` |
| 3        | Render **the book**                           | DESCRIPTION | arc2r/book  | Imports  | `bookdown`, `rmarkdown`  |
