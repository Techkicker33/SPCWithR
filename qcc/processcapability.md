Process Capability
==========================
This function calculates confidence limits for Cp using the method described by Chou et al. (1990). Approximate confidence limits for Cpl, Cpu and Cpk are computed using the method in Bissell (1990). Confidence limits for Cpm are based on the method of Boyles (1991); this method is approximate and it assumes that the target is midway between the specification limits.

### Definitions
- Cp= Process Capability. A simple and straightforward indicator of process capability.
- Cpk= Process Capability Index. Adjustment of Cp for the effect of non-centered distribution.
- Pp= Process Performance. A simple and straightforward indicator of process performance.
- Ppk= Process Performance Index. Adjustment of Pp for the effect of non-centered distribution.

#### Interpreting Cp, Cpk
Cpk is an index (a simple number) which measures how close a process is running to its specification limits, relative to the natural variability of the process. The larger the index, the less likely it is that any item will be outside the specs.

“If you hunt our shoot targets with bow, darts, or gun try this analogy. If your shots are falling in the same spot forming a good group this is a high Cp, and when the sighting is adjusted so this tight group of shots is landing on the bullseye, you now have a high Cpk.” 

### Interpreting Pp, Ppk
Process Performance Index basically tries to verify if the sample that you have generated from the process is capable to meet Customer CTQs (requirements). It differs from Process Capability in that Process Performance only applies to a specific batch of material. Samples from the batch may need to be quite large to be representative of the variation in the batch. Process Performance is only used when process control cannot be evaluated. An example of this is for a short pre-production run. Process Performance generally uses sample sigma in its calculation; Process capability uses the process sigma value determined from either the Moving Range, Range or Sigma control charts. 
<hr>

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
