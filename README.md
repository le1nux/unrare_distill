# Medical-LLM Supervision for Peer Retrieval in a Rare-Disease Community

Max Lübbering\*, Thiago Bell Felix de Oliveira\*, Corinna Lewis Schmalohr,
David Berghaus, Lorenz Grigull, Rafet Sifa

\* These authors contributed equally to this work.

This repository contains the LaTeX source and the PDF of the paper:
**[jql_unrare.pdf](jql_unrare.pdf)**.

## Abstract

People affected by rare diseases seek peers with shared experiences, but
diagnoses are often incomplete and interaction histories too sparse for
learning. On a non-profit peer platform with 3,584 profiles, we use a medical
LLM, MedGemma 27B, as relevance judge: it grades 6.3 million profile pairs with
an expert-informed rubric, and students learn these grades so that members,
including newcomers, are matched from a single profile encoding. A three-part
evaluation anchors teacher and students to a healthcare professional, to
historical user ratings and to each other. The LLM agrees more closely with the
professional than a pre-existing rule-based recommender (Spearman 0.78 versus
0.53), and its students agree as closely. For held-out newcomer users, a
fine-tuned embedding retrieval model orders their rated peers better than the
rules (NDCG@5 0.77 versus 0.69) and slightly better than the LLM itself; once a
new profile is transcribed, it ranks a new member against the other 3,583
profiles in 8 ms instead of 1.7 h on one A100 GPU. It concentrates suggestions
less than pairwise multilayer perceptron (MLP) scorers but more than the rules,
so deployment should monitor exposure. A theory of change links these results
to helpful peer contact and defines the outcome study that tests it.

## Contents

| Path | Content |
| --- | --- |
| `jql_unrare.tex` | Main LaTeX source |
| `figures/` | TikZ sources of the figures, the exposure table, and the box-plot image used in the feedback figure |
| `references.bib` | Bibliography |
| `llncs.cls`, `splncs04.bst` | Springer LNCS document class and bibliography style |
| `build.sh` | Build script |
| `jql_unrare.pdf` | Compiled paper |

## Building

```bash
./build.sh
```

The script compiles `jql_unrare.tex` into `jql_unrare.pdf` with
[Tectonic](https://tectonic-typesetting.github.io/) if it is installed, and
with `latexmk` and pdfLaTeX otherwise.

## Data

The platform's profiles, embeddings and teacher labels are not released:
even pseudonymized health attributes and embeddings can enable
re-identification or text recovery (see the paper's section on ethics and
data governance).
