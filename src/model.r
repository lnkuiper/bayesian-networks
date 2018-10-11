dag {
age [pos="-0.612,-1.712"]
campaign [pos="0.264,0.682"]
contact [pos="0.034,-0.180"]
day_of_week [pos="0.270,0.436"]
default [pos="-0.669,0.087"]
duration [pos="0.264,0.992"]
education [pos="-0.922,-1.508"]
housing [pos="-0.192,-0.268"]
job [pos="-0.173,-1.187"]
loan [pos="-0.977,0.013"]
marital [pos="-0.253,-0.695"]
month [pos="0.095,-0.913"]
wealth [latent,pos="-0.865,-0.821"]
y [outcome,pos="-0.575,1.126"]
age -> contact
age -> default
age -> education
age -> job
age -> marital
age -> wealth
age -> y
contact <-> job
default -> y
education -> contact
education -> default
education -> job
education -> marital
education -> wealth
housing -> default
housing -> y
job -> default
job -> marital
job -> wealth
loan -> default
loan -> y
marital -> default
marital <-> wealth
month -> contact
month -> default
month -> y
wealth -> contact
wealth -> default
wealth -> housing
wealth -> loan
wealth -> y
}
