dag {
age [pos="-0.571,-1.684"]
campaign [pos="0.264,0.682"]
contact [pos="0.044,-0.427"]
day_of_week [pos="0.270,0.436"]
default [pos="-0.577,0.073"]
duration [pos="-1.053,0.877"]
education [pos="-0.931,-1.547"]
housing [pos="-0.192,-0.268"]
job [pos="-0.266,-1.307"]
loan [pos="-1.115,-0.188"]
marital [pos="-0.253,-0.695"]
month [pos="0.236,-0.202"]
wealth [latent,pos="-0.865,-0.821"]
y [outcome,pos="-0.034,1.088"]
age -> contact
age -> default
age -> duration
age -> education
age -> job
age -> marital
age -> wealth
age -> y
contact -> duration
contact <-> job
default -> duration
default -> y
education -> contact
education -> default
education -> duration
education -> job
education -> marital
education -> wealth
housing -> default
housing -> duration
housing -> y
job -> default
job -> duration
job -> marital
job -> wealth
loan -> default
loan -> duration
loan -> y
marital -> default
marital -> duration
marital <-> wealth
month -> contact
month -> default
month -> duration
month -> y
wealth -> contact
wealth -> default
wealth -> housing
wealth -> loan
wealth -> y
}
