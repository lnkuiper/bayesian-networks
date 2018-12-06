dag {
age [pos="-1.080,-1.359"]
cons.conf.idx [pos="0.329,-1.150"]
cons.price.idx [pos="0.511,-0.531"]
default [pos="-0.682,0.632"]
education [pos="-0.289,-0.036"]
emp.var.rate [pos="0.508,0.025"]
job [pos="-0.263,-0.519"]
nr.employed [pos="-0.027,-1.533"]
single [pos="-1.305,0.175"]
y [pos="-0.619,-1.636"]
age -> default
age -> education
age -> single
age -> y
cons.conf.idx -> age
cons.conf.idx -> emp.var.rate
cons.conf.idx -> y
cons.price.idx -> emp.var.rate
cons.price.idx -> y
default -> y
education -> default
education -> job
education -> single
education -> y
emp.var.rate -> y
job -> default
job -> single
job -> y
nr.employed -> cons.conf.idx
nr.employed -> cons.price.idx
nr.employed -> emp.var.rate
nr.employed -> single
nr.employed -> y
single -> y
}
