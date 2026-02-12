# Regulator Coherence ⇒ BSD (submission bundle)

This bundle complements the LaTeX source `BSD_Reduction_Package.tex` and provides:
- `references.bib`: BibTeX entries for core references (Bloch–Kato, Gross–Zagier, Kato, Kolyvagin, Nekovář, Skinner–Urban, MTT).
- `PAI_padic_template.xlsx`: valuation-level PAI template (fill v_p(Reg_p) and see Δ_val).
- `PAI_full_template.xlsx`: full PAI template for Route A (p-adic L) and Route B (anchor-normalized units).

## Build
```
pdflatex BSD_Reduction_Package.tex
bibtex   BSD_Reduction_Package
pdflatex BSD_Reduction_Package.tex
pdflatex BSD_Reduction_Package.tex
```

## Repro
1. Open the Excel templates and fill your measured values from Sage/LMFDB.
2. For Route A, record dL_p(1) and Reg_p, and check their normalized ratio.
3. For Route B, fill v_p(Reg_p) and real-mapped log_u_p (after fixing an anchor), and confirm Δ_full ≈ 0.
