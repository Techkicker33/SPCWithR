edcc: An R Package for the Economic Design of the Control Chart
===============================================================
*** http://www.jstatsoft.org/v52/i09/paper ***


The basic purpose of the economic design of the control charts is to nd the optimum
control charts parameters to minimize the process cost. 

In this paper, an R package, **edcc** (economic design of control charts), which provides a numerical method to nd the
optimum chart parameters is presented using the unified approach of the economic design.
Also, some examples are given to illustrate how to use this package. 

The types of the control chart available in the edcc package are X-bar, CUSUM (cumulative sum), and EWMA
(exponentially-weighted moving average) control charts.

#### R package
The `R` package edcc comes with a namespace. The index of the package is listed as follows:
- `ecoXbar` : Economic design for X control chart.
- `ecoCusum` : Economic design for CUSUM control chart.
- `ecoEwma` : Economic design for EWMA control chart.
- `edcc-class` : Class *edcc*.
- `update` : S3 method, update for an *edcc* class object.
- `contour` : S3 method, contour plot of an *edcc* class object.
