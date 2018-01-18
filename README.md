Depth from Pressure
================
David Kaiser
2018/01/18

Description
-----------

A function to calculate **depth from pressure** according to UNESCO Technical Papers in Marine Science No. 44. This is the way that Seabird Electronics (SBE) CTD systems calculate depth (<http://www.seabird.com/document/an69-conversion-pressure-depth>). **Latitude** can optionally be supplied to correct for gravity variation with latitude. If latitude is not supplied standard gravity will be used.

Arguments
---------

*pressure* -- *in situ* pressure in dbar

*latitude* -- optional; used to calculate gravity variation with latitude

Value
-----

*depth in m*

Example
-------

without latitude supplied

``` r
depth.from.pressure.DK(pressure = 10)
```

    ## [1] 9.918132

with latitude supplied

``` r
depth.from.pressure.DK(pressure = 10, latitude = 10)
```

    ## [1] 9.943241
