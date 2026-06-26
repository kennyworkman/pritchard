#!/bin/bash

{
  echo "# An Introduction to Human Genetics"
  echo ""
  cat 1.1_useful_numbers.md
  echo ""
  cat 1.2_starter_pack.md
  echo ""
  cat 1.3_genome_variation.md
  echo ""
  cat 1.4_dna_sequencing.md
  echo ""
  cat 1.5_mutation.md
  echo ""
  echo "# Population Genetics: The Forces That Shape Genetic Variation"
  echo ""
  cat 2.1_genetic_drift.md
  echo ""
  cat 2.2_coalescent.md
  echo ""
  cat 2.3_linkage_recombination_ld.md
  echo ""
  cat 2.4_structured_populations.md
  echo ""
  cat 2.5_selection_models.md
  echo ""
  cat 2.6_positive_selection.md
  echo ""
  cat 2.7_genomewide_selection.md
} > notes.md

pandoc notes.md \
  --from gfm \
  -o notes.pdf \
  --pdf-engine=pdflatex \
  -V geometry:margin=1in \
  --toc \
  --toc-depth=2 \
  -V toc-title="Contents" \
  --metadata title="An Owner's Guide to the Human Genome - Notes"
