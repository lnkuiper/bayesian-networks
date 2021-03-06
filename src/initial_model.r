dag {
"consumer confidence index" [pos="0.829,0.313"]
"consumer price index" [pos="0.722,0.051"]
"contact type (medium)" [pos="0.258,-0.218"]
"credit in default?" [pos="-0.829,-0.309"]
"days since last contact" [pos="-1.591,0.270"]
"employment variation" [pos="0.853,-1.158"]
"euribor 3 month rate" [pos="0.889,0.517"]
"has housing loan?" [pos="0.085,-0.432"]
"has personal loan?" [pos="-1.235,-0.345"]
"last contact duration" [pos="-1.053,0.877"]
"last contact month" [pos="-1.450,-0.231"]
"last contact weekday" [pos="-1.703,-0.131"]
"marital status" [pos="-0.287,-0.973"]
"number of contacts in this campaign" [pos="-0.210,0.533"]
"number of employees" [pos="0.740,-1.498"]
"previous campaign outcome" [pos="-0.159,0.300"]
"this persons attitude to the current state of the economy" [latent,pos="0.425,0.679"]
OUTCOME [outcome,pos="-0.034,1.088"]
age [pos="-0.203,-1.544"]
education [pos="-0.689,-1.307"]
job [pos="0.314,-0.993"]
"consumer confidence index" -> "this persons attitude to the current state of the economy"
"consumer price index" -> "this persons attitude to the current state of the economy"
"contact type (medium)" -> "last contact duration"
"contact type (medium)" -> OUTCOME
"credit in default?" -> "last contact duration"
"credit in default?" -> OUTCOME
"days since last contact" -> "last contact duration"
"days since last contact" -> OUTCOME
"employment variation" -> "this persons attitude to the current state of the economy"
"employment variation" -> job
"employment variation" <-> "number of employees"
"euribor 3 month rate" -> "this persons attitude to the current state of the economy"
"has housing loan?" -> "credit in default?"
"has housing loan?" -> "last contact duration"
"has housing loan?" -> OUTCOME
"has personal loan?" -> "credit in default?"
"has personal loan?" -> "last contact duration" [pos="-1.230,-0.141"]
"has personal loan?" -> OUTCOME
"last contact duration" <-> OUTCOME
"last contact month" -> "last contact duration"
"last contact month" -> OUTCOME
"last contact weekday" -> "last contact duration"
"last contact weekday" -> OUTCOME
"marital status" -> "credit in default?"
"marital status" -> "has housing loan?"
"marital status" -> "has personal loan?"
"marital status" -> "last contact duration"
"number of contacts in this campaign" -> "last contact duration"
"number of contacts in this campaign" -> OUTCOME
"number of employees" -> "this persons attitude to the current state of the economy"
"number of employees" -> job
"previous campaign outcome" -> "last contact duration"
"previous campaign outcome" -> "number of contacts in this campaign"
"previous campaign outcome" -> OUTCOME
"this persons attitude to the current state of the economy" -> OUTCOME
age -> "contact type (medium)"
age -> "credit in default?"
age -> "has housing loan?"
age -> "has personal loan?"
age -> "last contact duration"
age -> "marital status"
age -> OUTCOME
age -> education
age -> job
education -> "credit in default?"
education -> "has personal loan?"
education -> "marital status"
education -> job
job -> "contact type (medium)"
job -> "credit in default?"
job -> "has housing loan?"
job -> "has personal loan?"
job -> "last contact duration"
job -> "marital status"
job -> "this persons attitude to the current state of the economy"
}
