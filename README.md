The `xbondgraphs` package
=========================
**THIS PACKAGE AND REPOSITORY ARE UNDER CONSTRUCTION** :hammer::construction_worker::wrench:

[xbondgraphs] is a LaTeX package that defines Ti*k*z styles and PGF keys to draw beautiful bond graphs.

## Table of contents
<!-- MDTOC maxdepth:2 firsth1:2 numbering:0 flatten:0 bullets:1 updateOnSave:1 -->

- [Table of contents](#table-of-contents)   
- [Installing](#installing)   
- [Functionality](#functionality)   
- [Alternatives](#alternatives)   
   - [Functionality comparison](#functionality-comparison)   
- [To-do list](#to-do-list)   
- [License](#license)   

<!-- /MDTOC -->

## Installing
The package can be installed by downloading it as `.zip` archive from [the Github page][xbondgraphs], extracting it, and using the following commands on the command line from the extracting location<sup>[1](#footnote1)</sup>:

``` bash
tex xbondgraphs.ins > xbondgraphs.log
pdflatex -synctex=1 -interaction=nonstopmode --shell-escape xbondgraphs.dtx >> xbondgraphs.log
pdflatex -synctex=1 -interaction=nonstopmode xbondgraphs.dtx >> xbondgraphs.log
makeindex -q -s gglo.ist -o xbondgraphs.gls xbondgraphs.glo >> xbondgraphs.log
makeindex -q xbondgraphs.idx >> xbondgraphs.log
pdflatex -synctex=1 -interaction=nonstopmode xbondgraphs.dtx >> xbondgraphs.log
pdflatex -synctex=1 -interaction=nonstopmode xbondgraphs.dtx >> xbondgraphs.log
```

The resulting files must be placed relative to the root of your TeXmf tree. The documentation files should be placed in `$TEXMF/doc/latex/xbondgraphs`, and the package code in `$TEXMF/tex/latex/xbondgraphs`. The documentation files are:
* `xbondgraphs.pdf`

The package code files are:
* `xbondgraphs.sty`
* `xbg.iconicdiagrams.code.tex`
* `xbg.blockdiagrams.code.tex`

`$TEXMF` is the root folder of your main TeX-tree. For MiKTeX users that is probably `C:/texmf/`, and for TeXLive users that is probably `/usr/local/texlive/<year>/texmf-dist/`.

All the remaining files can be removed, but if you would like to install again later, the `xbondgraphs.ins` and `xbondgraphs.dtx` should be kept.

## Functionality
With [xbondgraphs], users can:
* Use the `\bge` macro to draw in-line bond graph elements
* Use the `\bond` macro to draw in-line bonds
* Use the `bond` key for every path command (e.g. `\draw`, `\path`) to create bonds in a `tikzpicture` environment
* Use the `bond graph element` or the `bge` key in a `\node` specification to create elements in a `tikzpicture` environment
* Use the `mux` key in a `\node` specification to create a mux element in a `tikzpicture` environment with a specified number of in- and outputs.

Additionally users can include one of the (undocumented) libraries using `\usexbglibrary`. The currently supported libraries include `iconicdiagrams` and `blockdiagrams`. Alternatively one may use `\usexbglibrary{all}` to include all libraries.

Please consult the [manual](./doc/latex/xbondgraphs/xbondgraphs.pdf) for further instructions on how to use this package.

## Alternatives
Other packages to draw bond graphs using Ti*k*z and/or PGF are the [bondgraph] package by Jean-François Dupuis, and the [bondgraphs] package by Geert Folkertsma. The former has no documentation and just a brief example file. The latter is well documented, but due to some drawing peculiarities, the resulting bond graphs are not always beautiful, especially when using multi bonds.

This package is based on the [bondgraphs] package and attempts to cover all its functionality. However it currently does not (yet) cover all functions. It does provide some additional functionality.

### Functionality comparison
The following table shows a function comparison between the three packages.

Function                                 | [bondgraph]       | [bondgraphs]              | [xbondgraphs]
-----------------------------------------|:------------------:|:------------------------:|:------------------:
Automatic arrow barb direction           | :x:                | :heavy_check_mark:       | :heavy_check_mark:
Single bond drawings                     | :heavy_check_mark: | :heavy_check_mark:       | :heavy_check_mark:
In-line bonds and elements               | :x:                | :heavy_check_mark:       | :heavy_check_mark:
Multi bond drawings                      | :x:                | :heavy_multiplication_x: | :heavy_check_mark:
Power (de-)mux element                   | :x:                | :x:                      | :heavy_check_mark:
Multi-segment bonds                      | :question:         | :x:                      | :heavy_check_mark:
Straight bond barb                       | :x:                | :heavy_check_mark:       | :heavy_check_mark:
Curly bond barb                          | :heavy_check_mark: | :heavy_check_mark:       | :x:
Optional colon between element and label | :x:                | :x:                      | :heavy_check_mark:


## To-do list
1. Both libraries are not very consistent with the main part of the package, this must be adjusted.
2. Documentation must be written for both libraries<sup>[2](#footnote2)</sup>.

## License
Copyright &copy; 2018 M.J.W. Snippe

This work may be distributed and/or modified under the
conditions of the LaTeX Project Public License, either version 1.3
of this license or (at your option) any later version.
The latest version of this license is in

> http://www.latex-project.org/lppl.txt

and version 1.3 or later is part of all distributions of LaTeX
version 2005/12/01 or later.

This work has the LPPL maintenance status 'author-maintained'.

This work consists of the files found at https://github.com/MaxSnippe/xbondgraphs.

##### Footnotes
<a name="footnote1"></a><sup>1</sup> The first `pdflatex` command uses the `--shell-escape` option to create an additional temporary pdf that contains a bond graph produced with the [bondgraphs] package, this package does not cooperate with the [xbondgraphs] package so it has to be compiled in a separate document. Generally it is good practice to *not* use this option, unless you know what you are doing.

<a name="footnote2"></a><sup>2</sup> The libraries might be replaced by separate packages later, but that is yet to be decided.

[bondgraph]: https://ctan.org/pkg/bondgraph
[bondgraphs]: https://ctan.org/pkg/bondgraphs
[xbondgraphs]: https://github.com/MaxSnippe/xbondgraphs
