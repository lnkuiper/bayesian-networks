dag {
age [pos="-0.770,-1.645"]
cons.conf.idx [pos="0.110,-1.256"]
cons.price.idx [pos="0.243,-0.682"]
default [pos="-0.469,0.647"]
education [pos="-0.776,0.522"]
emp.var.rate [pos="0.199,0.007"]
housing [pos="-0.199,0.551"]
job [pos="-0.980,-1.272"]
loan [pos="0.034,0.348"]
nr.employed [pos="-0.113,-1.620"]
single [pos="-1.014,0.235"]
y [pos="-0.445,-1.775"]
age -> default
age -> education
age -> single
age -> y
cons.conf.idx -> age
cons.conf.idx -> emp.var.rate
cons.conf.idx -> housing
cons.conf.idx -> y
cons.price.idx -> emp.var.rate
cons.price.idx -> housing
cons.price.idx -> y
default -> y
education -> cons.conf.idx
education -> cons.price.idx
education -> default
education -> housing
education -> job
emp.var.rate -> y
job -> default
loan -> cons.conf.idx
loan -> education
nr.employed -> cons.conf.idx
nr.employed -> cons.price.idx
nr.employed -> emp.var.rate
nr.employed -> job
nr.employed -> single
nr.employed -> y
single -> y
}
