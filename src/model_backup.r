dag {
age [pos="-0.496,-1.985"]
cons.conf.idx [pos="-0.356,-0.549"]
cons.price.idx [pos="-0.091,-1.071"]
default [pos="-0.768,0.587"]
education [pos="-0.778,-1.835"]
emp.var.rate [pos="-0.072,-1.926"]
housing [pos="-0.441,0.108"]
job [pos="-0.418,-1.487"]
loan [pos="-0.672,-0.240"]
marital [pos="-0.624,-0.838"]
nr.employed [pos="-0.306,-1.799"]
wealth [latent,pos="-0.873,-1.059"]
y [outcome,pos="-0.478,1.050"]
age -> education
age -> job
age -> marital
age -> wealth
cons.conf.idx -> default
cons.conf.idx -> housing
cons.conf.idx -> loan
cons.conf.idx -> y
cons.price.idx -> cons.conf.idx
cons.price.idx -> default
cons.price.idx -> housing
cons.price.idx -> loan
cons.price.idx -> y
default -> y
education -> default
education -> job
education -> marital
education -> wealth
emp.var.rate -> cons.conf.idx
emp.var.rate -> cons.price.idx
emp.var.rate -> default
emp.var.rate -> housing
emp.var.rate -> job
emp.var.rate -> loan
emp.var.rate -> nr.employed
housing -> default
job -> default
job -> marital
job -> wealth
loan -> default
loan -> y
marital -> housing
marital <-> wealth
nr.employed -> cons.conf.idx
nr.employed -> cons.price.idx
nr.employed -> default
nr.employed -> housing
nr.employed -> job
nr.employed -> loan
wealth -> default
wealth -> housing
wealth -> loan
wealth -> y
}
