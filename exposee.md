---
header-includes:
    - \usepackage{tikz}
---
# Project Proposal
Portuguese Bank Marketing

  - **Niek Janssen**
  - **Laurens Kuiper**
  - **Ward Theunisse**

## Problem domain


## Data
We use a publicly available bank marketing dataset retrieved from the UCI Machine Learning Repository\footnote{http://archive.ics.uci.edu/ml/datasets/Bank+Marketing}. This dataset contains data related to a direct marketing campaign by a Portuguese banking institution based on phone calls. Each row in the table is one contact with a potential customer called in this marketing campaign. Our Bayesian network will contain the following variables related to a potential customer: Age, Eduction, Job, Marital Status, Whether they currently have a housing loan, Whether they have credit in default, Whether they have a personal loan.
It will also contain the following variables related to the current call: The contact type (whether the potential customer used a mobile phone, landline, etc)), Contact month, Contact weekday, Amount of days since last contact, Previous campaign outcome, Number of contacts in this campaign, Contact duration, Outcome.
Lastly it will also contain these national economic variables:
Consumer price index, Consumer confidence level, 3 Month Euribor (European banking loan) rate, Employment rate, Employment variation.

## Application


## Initial causal diagram

\input{latexmodel}