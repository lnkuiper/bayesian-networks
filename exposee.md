---
geometry: margin=7em
header-includes:
    - \usepackage{graphicx}
---

# Project Proposal
### Portuguese Bank Marketing
**Niek Janssen, Laurens Kuiper, Ward Theunisse**

## Problem domain
Companies engage in direct marketing campaigns by contacting potential customers to reach a specific goal (e.g. selling a product or service).
Communicating is often done by telephone, initiated from the company's contact center.
One of the biggest challenges the companies face is estimating which people are most likely to buy their product: many calls result in customers declining the offer.
For a company to have a succesful marketing campaign, a sufficient number of customers must follow up on their offer, otherwise it will cost more than it will bring in.

Companies typically collect data about their campaign to improve their success.
In this project, we will use publicly available data from one such campaign to build a Bayesian network model about the factors involved in bank marketing.

## Data
We use a publicly available bank marketing dataset retrieved from the UCI Machine Learning Repository\footnote{http://archive.ics.uci.edu/ml/datasets/Bank+Marketing}. This dataset contains data related to a direct marketing campaign by a Portuguese banking institution based on phone calls. Each row in the table corresponds one instance of telephonic contact with a potential customer in the latest marketing campaign. Our Bayesian network will contain the following variables related to a potential customer: Age, Eduction, Job, Marital Status, whether they currently have a Housing Loan, whether they have Credit in Default, and whether they have a Personal Loan.
It will also contain the following variables related to the call: the Contact type (whether the potential customer used a mobile phone, landline), Contact Month, Contact Weekday, amount of Days Since Last Contact, Previous campaign outcome, Number of Contacts in this Campaign, Contact Duration, and the Outcome of the call (whether the customer subscribes or not).
Lastly it will also contain these national economic variables:
Consumer Price Index, Consumer Confidence Level, 3 Month Euribor (European banking loan) rate, Employment Rate, Employment Variation.

## Application
We are mainly interested in which variables influence the customer's decision 
subscribing to a term deposit. We will be able to learn which variables affect
the decision, and how large their effect size is. Using the final model, we
can advise the bank about: 

  - Which people should the bank target? For example, people with certain types
      of jobs or education might be more susceptible to a term deposit. 
  - Given a certain person, what is the best time to call this him/her? For
      example, students do not like being called early in the morning. 
  - How important is the current state of the economy for making this decision?
      Should the bank target different people as the economy evolves?

## Initial causal diagram
\includegraphics[width=20cm,angle=90]{dagitty-model.png}
