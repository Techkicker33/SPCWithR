Computes process capability indices for a 'qcc' object of type "xbar" and plot the histogram.

<pre><code>
process.capability(object,spec.limits, target, std.dev, nsigmas, 
                   confidence.level = 0.95, breaks = "scott", 
                   add.stats = TRUE, print = TRUE, restore.par = TRUE)
</code></pre>

### Arguments
- `object` a 'qcc' object of type "xbar"
- `spec.limits` a vector specifying the lower and upper specification limits.
- `target` a value specifying the target of the process. If missing the value from the 'qcc' object is used if not NULL, otherwise the target is set at the middle value bewteen specification limits.
- `std.dev` a value specifying the within-group standard deviation. If not provided is taken from the 'qcc' object.
- `nsigmas` a numeric value specifying the number of sigmas to use. If not provided is taken from the 'qcc' object.
- `confidence.level` a numeric value between 0 and 1 specifying the level to use for computing confidence intervals.
- `breaks` a value or string used to draw the histogram. See the help for hist for more details.
- `add.stats` a logical value indicating whether statistics and capability indices should be added at the bottom of the chart.
- `print` a logical value indicating whether statistics and capability indices should be printed.
- `restore.par` a logical value indicating whether the previous par settings must be restored. If you need to add points, lines, etc. to a chart set this to FALSE.
