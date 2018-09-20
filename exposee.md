---
header-includes:
    - \usepackage{tikz}
    - \usepackage{graphicx}
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
We are mainly interested in what variables influence the decision of taking a
term deposit. We should be able to see what variables have a large effect, and
in what way. By doing this, we can advise the bank about two factors: 

  - What people should the bank choose? For example, people with certain types
      of jobs or education might be more susceptible to a term deposit. 
  - Given a certain person, what is the best timing to call this person? For
      example, students might not like being called at 9:00 in the morning. 
  - How important is a person's view on the current economy for making this
    decision? Should the bank call other people when the economy evolves?

## Initial causal diagram

\includegraphics[width=20cm,angle=90]{dagitty-model.png}
