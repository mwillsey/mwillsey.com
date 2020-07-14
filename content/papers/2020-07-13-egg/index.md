+++
template = "paper.html"
title = "`egg`: Fast and Extensible E-graphs"

[extra]
type = "publication"
authors = ["mwillsey", "remy", "oflatt", "cnandi", "pavel", "ztatlock"]
venue = "Preprint"

links.arXiv = "https://arxiv.org/abs/2004.03082"
links.GitHub = "https://github.com/mwillsey/egg"

bib = '''
@misc{2020-egg,
    title={egg: Fast and Extensible E-graphs},
    author={Max Willsey and Yisu Remy Wang and Oliver Flatt and Chandrakana Nandi and Pavel Panchekha and Zachary Tatlock},
    year={2020},
    eprint={2004.03082},
    archivePrefix={arXiv},
    primaryClass={cs.PL}
}
'''
+++

<div class="right">
  <img src="egg.png" alt="egg logo"/>
</div>
  
`egg` is available on
  [GitHub](https://github.com/mwillsey/egg),
  [crates.io](https://crates.io/crates/egg),
  and [docs.rs](https://docs.rs/egg/).

## Abstract
  
An e-graph efficiently represents a congruence relation over many
expressions. Although they were originally developed in the late 1970s
for use in automated theorem provers, a more recent technique known as
*equality saturation* repurposes e-graphs to implement state-of-the-art,
rewrite-driven compiler optimizations and program synthesizers. However,
e-graphs remain unspecialized for this newer use case. Equality
saturation workloads exhibit distinct characteristics and often require
ad hoc e-graph extensions to incorporate transformations beyond purely
syntactic rewrites.

This work contributes two techniques that make e-graphs fast and
extensible, specializing them to equality saturation. A new amortized
congruence closure algorithm called *rebuilding* takes advantage of
equality saturation's distinct workload, providing asymptotic speedups
over current techniques in practice. A general mechanism called *e-class
analyses* integrates domain-specific analyses into the e-graph, reducing
the need for ad hoc manipulation.

We implemented these techniques in a new open-source library called
`egg`. Our case studies on three previously published applications of
equality saturation highlight how the flexibility of e-class analyses
supports diverse domains and how `egg` can provide up to 3000×
speed ups. 
