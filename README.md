# KalkulatorPajak

**KalkulatorPajak** is an R package for computing income tax in accordance with the **Indonesian Income Tax Law (Undang-Undang Pajak Penghasilan)**.  
The package provides reproducible, transparent, and law-compliant tax computation methods for both individual and corporate taxpayers.

## 🧭 Objective

The package aims to deliver a reliable **computational framework** for quantitative and educational analysis of Indonesian tax obligations.  
All implemented functions adhere to key legal provisions, including:

- **Article 2(3a)** — Definition of Individual Tax Resident  
- **Article 17(1a)** — Progressive Tax Rates for Individuals  
- **Article 17(1b)** — Corporate Income Tax Rates  
- **Article 7(1)** — Personal Allowance (PTKP) Deductions  

This project supports both **academic research** and **practical tax computation** workflows in R.

## ⚙️ Current Features

- Functions for individual and corporate income tax calculation:
  - `pph17p1a()` — Individual income tax (Article 17 paragraph 1a)  
  - `pph17p1b()` — Corporate income tax (Article 17 paragraph 1b)  
- PTKP (Personal Tax-Free Threshold) computation: `pph7p1()`  
- Super simple individual tax return form (SPT 1770-SS): `sptopss()`  
- Foundational modules for tax validation and summary generation.

## 🧩 Example Usage

```r
library(KalkulatorPajak)

# Calculate Individual Income Tax (Article 17 paragraph 1a)
pph17p1a(75000000)

# Calculate Corporate Income Tax (Article 17 paragraph 1b)
pph17p1b(500000000)

# Retrieve PTKP (Personal Allowance) by taxpayer status
pph7p1("K/1")

# Compute basic 1770-SS return
sptopss(income = 80000000, status = "TK/0")
```

## 🧠 Methodological Notes

* Fully implemented in R, designed for reproducible tax computation and data-driven policy simulation.
* Legal logic is derived from the Indonesian Income Tax Law (UU PPh) and its implementing regulations.
* All computational steps are explicit and traceable for audit and research purposes.
* Modular architecture enables integration into larger analytical or reporting pipelines.

## To Do

* Core Stabilization
  Strengthening core computation and documentation consistency. (ex: refactor code, unit test, roxygen2, datasets, validation and summarization)
* Extended Coverage
  Expanding coverage for individuals and simplified entities. (ex: final tax, withholding tax, export csv)
* Corporate & Integration
  Extending to corporate taxpayers and consolidated tax analysis.
* Data Integration
  Enhancing interoperability and standard data exchange. (ex: XLSX, XBRL)

## 📚 Citation

If you use *KalkulatorPajak* in your research, please cite it as:

> Tejaningrat, Yudha H. (2017). KalkulatorPajak: Tax Computation Based on Indonesian Income Tax Law (UU PPh). R package version 0.x. https://github.com/yht/KalkulatorPajak

