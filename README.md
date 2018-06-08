The `xbondgraphs` package
=========================
**THIS PACKAGE AND REPOSITORY ARE UNDER CONSTRUCTION** :hammer::construction_worker::wrench:

[xbondgraphs] is a LaTeX package that defines Ti*k*z styles and PGF keys to draw beautiful bond graphs.

## Table of contents
<!-- MDTOC maxdepth:6 firsth1:2 numbering:0 flatten:0 bullets:1 updateOnSave:1 -->

- [Table of contents](#Table-of-contents)   
- [Installing](#Installing)   
- [Functionality](#Functionality)   
- [Alternatives](#Alternatives)   
   - [Functionality comparison](#Functionality-comparison)   

<!-- /MDTOC -->

## Installing
The package can be installed by downloading it as `.zip` archive from [the Github page][xbondgraphs] and extracting it in the root of your TeXmf tree. The documentation files should be automatically placed in `$TEXMF/doc/latex/xbondgraphs`, and the package code in `$TEXMF/tex/latex/xbondgraphs`. The documentation files are:
* `xbondgraphs.pdf`
* `xbondgraphs.tex`

The package code files are:
* `xbondgraphs.sty`
* `xbg.iconicdiagrams.code.tex`
* `xbg.blockdiagrams.code.tex`

`$TEXMF` is the root folder of your main TeX-tree. For MiKTeX users that is probably `C:/texmf/`, and for TeXLive users that is probably `/usr/local/texlive/<year>/texmf-dist/`.

## Functionality
With [xbondgraphs], users can:
* Use the `\bge` macro to draw in-line bond graph elements
* Use the `\bond` macro to draw in-line bonds
* Use the `bond` key for every path command (e.g. `\draw`, `\path`) to create bonds in a `tikzpicture` environment
* Use the `bond graph element` or the `bge` key in a `\node` specification to create elements in a `tikzpicture` environment
* Use the `mux` key in a `\node` specification to create a mux element in a `tikzpicture` environment with a specified number of in- and outputs.

Additionally users can include one of the (undocumented) libraries using `\usexbglibrary`. The currently supported libraries include `iconicdiagrams` and `blockdiagrams`.

Please consult the [manual](./doc/latex/xbondgraphs/xbondgraphs.pdf) for further instructions on how to use this package.

## Alternatives
Other packages to draw bond graphs using Ti*k*z and/or PGF are the [bondgraph] package by Jean-François Dupuis, and the [bondgraphs] package by Geert Folkertsma. The former has no documentation and just a brief example file. The latter is well documented, but due to some drawing peculiarities, the resulting bond graphs are not always beautiful, especially when using multi bonds.

This package is based on the [bondgraphs] package and attempts to cover all its functionality. However it currently does not (yet) cover all functions. It does provide some additional functionality.

### Functionality comparison
The following table shows a function comparison between the three packages.

Function                                 | [bondgraph]       | [bondgraphs]        | [xbondgraphs]
-----------------------------------------|:------------------:|:------------------:|:------------------:
Automatic arrow barb direction           | :x:                | :heavy_check_mark: | :heavy_check_mark:
Single bond drawings                     | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark:
In-line bonds and elements               | :x:                | :heavy_check_mark: | :heavy_check_mark:
Multi bond drawings                      | :x:                | :white_check_mark: | :heavy_check_mark:
Power (de-)mux element                   | :x:                | :x:                | :heavy_check_mark:
Multi-segment bonds                      | :question:         | :x:                | :heavy_check_mark:
Straight bond barb                       | :x:                | :heavy_check_mark: | :heavy_check_mark:
Curly bond barb                          | :heavy_check_mark: | :heavy_check_mark: | :x:
Optional colon between element and label | :x:                | :x:                | :heavy_check_mark:



&copy; 2018 M.J.W. Snippe, this ma­te­rial is sub­ject to the LATEX Project Public Li­cense 1.3

[bondgraph]: https://ctan.org/pkg/bondgraph
[bondgraphs]: https://ctan.org/pkg/bondgraphs
[xbondgraphs]: https://github.com/MaxSnippe/xbondgraphs
