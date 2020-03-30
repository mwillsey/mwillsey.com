+++
template = "paper.html"
title = "Synthesizing Structured CAD Models with Equality Saturation and Inverse Transformations"

[extra]
type = "publication"
authors = ["cnandi", "mwillsey", "adama", "jrw", "eva", "djg", "ztatlock"]
venue = "PLDI 2020"
venue_url = "https://pldi20.sigplan.org/details/pldi-2020-papers/52/Synthesizing-Structured-CAD-Models-with-Equality-Saturation-and-Inverse-Transformatio"

links.pdf = "2020-pldi-szalinski.pdf"

bib = '''
@inproceedings{2020-pldi-szalinski,
  title  = {Synthesizing Structured CAD Models with Equality Saturation and Inverse Transformations},
  author = {
    Chandrakana Nandi and
    Max Willsey and
    Adam Anderson and
    James R. Wilcox and
    Eva Darulova and 
    Dan Grossman and
    Zachary Tatlock
  },
  booktitle = {PLDI '20},
  series = {PLDI '20},
  year = {2020},
}
'''
+++

<figure class="fullwidth">
  <img src="overview.png"></img>
  <caption>
  Existing mesh decompilers turn triangle meshes into CSG expressions. Szalinski
  robustly synthesizes smaller, structured Caddy programs from CSG expressions.
  This can ease customization by simplifying edits: small, mostly local changes
  yield usefully different models. The photo shows the 3D printed hex wrench
  holder after customizing hole sizes.
  </caption>
</figure>

## Abstract

Recent program synthesis techniques help users customize CAD models
(e.g., for 3D printing) by decompiling low-level triangle meshes to Constructive
Solid Geometry (CSG) expressions.
Without loops or functions, editing CSG can require many
coordinated changes, and existing mesh decom-pilers use heuristics that can
obfuscate high-level structure.

This paper proposes a second decompilation stage
to robustly “shrink” unstructured CSG expressions into more editable programs
with map and fold operators.
We present Szalinski, a tool that uses Equality
Saturation with semantics-preserving CAD rewrites to efficiently search for
smaller equivalent programs. 
Szalinski relies on inverse transformations, a novel
way for solvers to speculatively add equivalences to an E-graph.
We qualitatively evaluate Szalinski in case studies, show how it composes with an
existing mesh decompiler, and demonstrate that Szalinski can shrink large models
in seconds.

