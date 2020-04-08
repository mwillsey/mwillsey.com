+++
template = "paper.html"
title = "`egg`: Easy, Efficient, and Extensible E-graphs"

[extra]
type = "publication"
authors = ["mwillsey", "remy", "oflatt", "cnandi", "pavel", "ztatlock"]
venue = "Preprint"

links.arXiv = "https://arxiv.org/abs/2004.03082"
links.GitHub = "https://github.com/mwillsey/egg"

bib = '''
@misc{2020-egg,
    title={egg: Easy, Efficient, and Extensible E-graphs},
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

An E-graph is a data structure that can efficiently encode the
  congruence closure of an equivalence relation over many expressions.
E-graphs are used in theorem provers for communicating
  equalities among theories.
Another strand of work proposed their use for rewrite-driven program
  optimization with a technique called _equality saturation_.

In this work, we expand on the idea of equality saturation
  and re-propose E-graphs as a solution to a diverse set of
  optimization problems, addressing issues identified by past work.
We introduce _rebuilding_, a new, simpler means of maintaining
  congruence closure that is much faster than current techniques.
We propose _metadata_, a mechanism that enables integration of
  semantic analyses to the E-graph in addition to syntactic rewrites.
We realize these techniques in `egg`, an easy, efficient, and extensible E-graph library.
We highlight published works that use `egg` across a wide range of
  optimization-oriented applications.
