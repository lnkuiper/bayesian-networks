dag {
age [pos="-0.552,-1.832"]
campaign [pos="0.264,0.682"]
cons.conf.idx [pos="-0.064,-1.586"]
cons.price.idx [pos="0.071,-1.673"]
day_of_week [pos="0.270,0.436"]
default [pos="-0.634,0.236"]
duration [pos="0.264,0.992"]
education [pos="-0.922,-1.508"]
emp.var.rate [pos="0.063,-1.305"]
euribor3m [pos="-0.124,-1.685"]
housing [pos="-0.265,-0.727"]
job [pos="-0.252,-1.174"]
loan [pos="-0.977,0.013"]
marital [pos="-0.448,-0.768"]
month [pos="-0.082,-0.438"]
nr.employed [pos="0.082,-1.000"]
wealth [latent,pos="-0.881,-0.646"]
y [outcome,pos="-0.575,1.126"]
age -> default
age -> education
age -> job
age -> marital
age -> wealth
age -> y
cons.price.idx -> emp.var.rate
cons.price.idx -> y
default -> y
education -> default
education -> job
education -> marital
education -> wealth
housing -> default
housing <-> y
job -> default
job -> marital
job -> wealth
loan -> default
loan -> y
marital -> default
marital <-> wealth
month -> nr.employed
month -> y
wealth -> default
wealth -> housing
wealth -> loan
wealth -> y
}
