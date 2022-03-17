The `xbondgraphs` package
=========================

[xbondgraphs] is a LaTeX package that defines Ti*k*z styles and PGF keys to draw beautiful bond graphs.

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


[bondgraph]: https://ctan.org/pkg/bondgraph
[bondgraphs]: https://ctan.org/pkg/bondgraphs
[xbondgraphs]: https://github.com/max-sn/xbondgraphs
