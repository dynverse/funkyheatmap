
<!-- README.md is generated from README.qmd. Please edit that file -->

# funkyheatmap: Generating Funky Heatmaps for Data Frames

<!-- badges: start -->

[![R-CMD-check](https://github.com/dynverse/funkyheatmap/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/dynverse/funkyheatmap/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

`funkyheatmap` allows generating heatmap-like visualisations for
benchmark data frames. Funky heatmaps can be fine-tuned by providing
annotations of the columns and rows, which allows assigning multiple
palettes or geometries or grouping rows and columns together in
categories.

## Installation

You can install funkyheatmap like so:

``` r
install.packages("funkyheatmap")
```

You can also download `funkyheatmap` as a [standalone
executable](http://funkyheatmap.dynverse.org/articles/executable.html)
or a [Nextflow
pipeline](http://funkyheatmap.dynverse.org/articles/nextflow.html).

## Example

Let’s use the `mtcars` dataset as an example of what a funky heatmap
looks like.

<div class="panel-tabset">

## `mtcars` dataset

|                     |  mpg | cyl |  disp |  hp | drat |    wt |  qsec |  vs |  am | gear | carb |
|:--------------------|-----:|----:|------:|----:|-----:|------:|------:|----:|----:|-----:|-----:|
| Mazda RX4           | 21.0 |   6 | 160.0 | 110 | 3.90 | 2.620 | 16.46 |   0 |   1 |    4 |    4 |
| Mazda RX4 Wag       | 21.0 |   6 | 160.0 | 110 | 3.90 | 2.875 | 17.02 |   0 |   1 |    4 |    4 |
| Datsun 710          | 22.8 |   4 | 108.0 |  93 | 3.85 | 2.320 | 18.61 |   1 |   1 |    4 |    1 |
| Hornet 4 Drive      | 21.4 |   6 | 258.0 | 110 | 3.08 | 3.215 | 19.44 |   1 |   0 |    3 |    1 |
| Hornet Sportabout   | 18.7 |   8 | 360.0 | 175 | 3.15 | 3.440 | 17.02 |   0 |   0 |    3 |    2 |
| Valiant             | 18.1 |   6 | 225.0 | 105 | 2.76 | 3.460 | 20.22 |   1 |   0 |    3 |    1 |
| Duster 360          | 14.3 |   8 | 360.0 | 245 | 3.21 | 3.570 | 15.84 |   0 |   0 |    3 |    4 |
| Merc 240D           | 24.4 |   4 | 146.7 |  62 | 3.69 | 3.190 | 20.00 |   1 |   0 |    4 |    2 |
| Merc 230            | 22.8 |   4 | 140.8 |  95 | 3.92 | 3.150 | 22.90 |   1 |   0 |    4 |    2 |
| Merc 280            | 19.2 |   6 | 167.6 | 123 | 3.92 | 3.440 | 18.30 |   1 |   0 |    4 |    4 |
| Merc 280C           | 17.8 |   6 | 167.6 | 123 | 3.92 | 3.440 | 18.90 |   1 |   0 |    4 |    4 |
| Merc 450SE          | 16.4 |   8 | 275.8 | 180 | 3.07 | 4.070 | 17.40 |   0 |   0 |    3 |    3 |
| Merc 450SL          | 17.3 |   8 | 275.8 | 180 | 3.07 | 3.730 | 17.60 |   0 |   0 |    3 |    3 |
| Merc 450SLC         | 15.2 |   8 | 275.8 | 180 | 3.07 | 3.780 | 18.00 |   0 |   0 |    3 |    3 |
| Cadillac Fleetwood  | 10.4 |   8 | 472.0 | 205 | 2.93 | 5.250 | 17.98 |   0 |   0 |    3 |    4 |
| Lincoln Continental | 10.4 |   8 | 460.0 | 215 | 3.00 | 5.424 | 17.82 |   0 |   0 |    3 |    4 |
| Chrysler Imperial   | 14.7 |   8 | 440.0 | 230 | 3.23 | 5.345 | 17.42 |   0 |   0 |    3 |    4 |
| Fiat 128            | 32.4 |   4 |  78.7 |  66 | 4.08 | 2.200 | 19.47 |   1 |   1 |    4 |    1 |
| Honda Civic         | 30.4 |   4 |  75.7 |  52 | 4.93 | 1.615 | 18.52 |   1 |   1 |    4 |    2 |
| Toyota Corolla      | 33.9 |   4 |  71.1 |  65 | 4.22 | 1.835 | 19.90 |   1 |   1 |    4 |    1 |
| Toyota Corona       | 21.5 |   4 | 120.1 |  97 | 3.70 | 2.465 | 20.01 |   1 |   0 |    3 |    1 |
| Dodge Challenger    | 15.5 |   8 | 318.0 | 150 | 2.76 | 3.520 | 16.87 |   0 |   0 |    3 |    2 |
| AMC Javelin         | 15.2 |   8 | 304.0 | 150 | 3.15 | 3.435 | 17.30 |   0 |   0 |    3 |    2 |
| Camaro Z28          | 13.3 |   8 | 350.0 | 245 | 3.73 | 3.840 | 15.41 |   0 |   0 |    3 |    4 |
| Pontiac Firebird    | 19.2 |   8 | 400.0 | 175 | 3.08 | 3.845 | 17.05 |   0 |   0 |    3 |    2 |
| Fiat X1-9           | 27.3 |   4 |  79.0 |  66 | 4.08 | 1.935 | 18.90 |   1 |   1 |    4 |    1 |
| Porsche 914-2       | 26.0 |   4 | 120.3 |  91 | 4.43 | 2.140 | 16.70 |   0 |   1 |    5 |    2 |
| Lotus Europa        | 30.4 |   4 |  95.1 | 113 | 3.77 | 1.513 | 16.90 |   1 |   1 |    5 |    2 |
| Ford Pantera L      | 15.8 |   8 | 351.0 | 264 | 4.22 | 3.170 | 14.50 |   0 |   1 |    5 |    4 |
| Ferrari Dino        | 19.7 |   6 | 145.0 | 175 | 3.62 | 2.770 | 15.50 |   0 |   1 |    5 |    6 |
| Maserati Bora       | 15.0 |   8 | 301.0 | 335 | 3.54 | 3.570 | 14.60 |   0 |   1 |    5 |    8 |
| Volvo 142E          | 21.4 |   4 | 121.0 | 109 | 4.11 | 2.780 | 18.60 |   1 |   1 |    4 |    2 |

## Code

``` r
library(funkyheatmap)
library(dplyr, warn.conflicts = FALSE)
library(tibble, warn.conflicts = FALSE)

data("mtcars")
```

</div>

You can visualise the dataset as follows.

``` r
g <- funky_heatmap(mtcars)
#> ℹ Could not find column 'id' in data. Using rownames as 'id'.
#> ℹ No column info was provided, assuming all columns in `data` are to be plotted.
#> ℹ Column info did not contain column `name`, using `id` to generate it.
#> ℹ Column info did not contain information on which columns to plot, inferring from `data` types.
#> ℹ Column info did not contain group information, assuming columns are ungrouped.
#> ℹ Column info did not contain a column called 'palette', generating palettes based on the 'geom' column.
#> ℹ Column info did not contain a column called 'options', generating ptions based on the 'geom' column.
#> ℹ No row info was provided, assuming all rows in `data` are to be plotted.
#> ℹ Row info did not contain group information, assuming rows are ungrouped.
#> ℹ No palettes were provided, trying to automatically assign palettes.
#> ℹ Palette named 'numerical_palette' was not defined. Assuming palette is numerical. Automatically selected palette 'Blues'.
```

``` r
g
```

<img src="man/figures/README-view-heatmap-1.png" style="width:100.0%" />

## Customising the plot

However, this plot can look so much better if you provide additional
metadata for the rows and columns. See more information on how you can
customise.

``` r
data <- mtcars %>%
  rownames_to_column("id") %>%
  arrange(desc(mpg))

column_info <- tribble(
  ~id,     ~group,         ~name,                      ~geom,        ~palette,    ~options,
  "id",    "",             "",                         "text",       NA,          list(hjust = 0, width = 6),
  "mpg",   "overall",      "Miles / gallon",           "bar",        "palette1",  list(width = 4, legend = FALSE),
  "cyl",   "overall",      "Number of cylinders",      "bar",        "palette2",  list(width = 4, legend = FALSE),
  "disp",  "group1",       "Displacement (cu.in.)",    "funkyrect",  "palette1",  lst(),
  "hp",    "group1",       "Gross horsepower",         "funkyrect",  "palette1",  lst(),
  "drat",  "group1",       "Rear axle ratio",          "funkyrect",  "palette1",  lst(),
  "wt",    "group1",       "Weight (1000 lbs)",        "funkyrect",  "palette1",  lst(),
  "qsec",  "group2",       "1/4 mile time",            "circle",     "palette2",  lst(),
  "vs",    "group2",       "Engine",                   "circle",     "palette2",  lst(),
  "am",    "group2",       "Transmission",             "circle",     "palette2",  lst(),
  "gear",  "group2",       "# Forward gears",          "circle",     "palette2",  lst(),
  "carb",  "group2",       "# Carburetors",            "circle",     "palette2",  lst()
)

g <- funky_heatmap(data, column_info = column_info, expand = list(xmax = 4))
#> ℹ No row info was provided, assuming all rows in `data` are to be plotted.
#> ℹ Row info did not contain group information, assuming rows are ungrouped.
#> ℹ No column groups was provided, deriving from column info.
#> ℹ Column groups did not contain a column called 'palette'. Assuming no colour scales need to be used.
#> ℹ Column groups did not contain a column called 'level1'. Using `column_info$group` as a makeshift column group name.
#> ℹ No palettes were provided, trying to automatically assign palettes.
#> ℹ Palette named 'palette1' was not defined. Assuming palette is numerical. Automatically selected palette 'Blues'.
#> ℹ Palette named 'palette2' was not defined. Assuming palette is numerical. Automatically selected palette 'Reds'.
```

``` r
g
```

<img src="man/figures/README-view-heatmap-with-colinfo-1.png"
style="width:100.0%" />

## More information

- The [reference
  documentation](http://funkyheatmap.dynverse.org/reference/index.html)
  on `funky_heatmap()` details the exact formats of each annotation
  object that you can pass to it.

- Check out the vignette
  [`vignette("mtcars", "funkyheatmap")`](http://funkyheatmap.dynverse.org/articles/mtcars.html)
  for more information on how to customize this visualisation.

- In
  [`vignette("dynbenchmark", "funkyheatmap")`](http://funkyheatmap.dynverse.org/articles/dynbenchmark.html)
  we use funkyheatmap to regenerate the figures from Saelens et
  al. (2019)
  [doi:10.1038/s41587-019-0071-9](https://doi.org/10.1038/s41587-019-0071-9).

- We used [Viash](https://viash.io) to wrap the
  `funkyheatmap::funky_heatmap()` function as a [standalone
  executable](http://funkyheatmap.dynverse.org/articles/executable.html)
  and [Nextflow
  module](http://funkyheatmap.dynverse.org/articles/nextflow.html).
