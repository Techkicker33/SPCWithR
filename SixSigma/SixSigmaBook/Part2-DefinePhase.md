Chapter 3 Process Mapping with R
Chapter 4 Loss Function Analysis

- 3.2 Process Mapping as a Problem Solving Method
- 4.3 Modelling the Loss Function
- 4.4 Average Loss Distribution
- 4.6 Loss Function Analysis with the SixSigma R package

### 3.3  Strategies for Prcess Mapping

The SIPOC workflow

#### 3.4.5 Classifying the Parameters

### 3.5 Drawing a Process Map with the SixSigma Package

<pre><code>
ss.pMap(steps,inputs,outputs,io,param,feat,sub="Pizza Process Project")
</code></pre>

### 4.6 Loss Function Analysis with Six Sigma Package
<pre><code>
ss.lfa(ss.data.bolts,"diameter",lfa.Delta=0.5,lfa.Y0=10,
lfa.sub="Bolts Project",lfa.L0=0.01,
lfa.size=100000,lfa.output="both")
</code></pre>
