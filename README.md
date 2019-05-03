As a user,
So I can find customers,
I want to search for my customers by their surnames.

user - search (by surname)
customers

As a person,
So that I can use a bike,
I'd like a docking station to release a bike.

As a person,
So that I can use a good bike,
I'd like to see if a bike is working

customer - use
docking station - release bike
bike - working?

As a member of the public
So I can return bikes I've hired
I want to dock my bike at the docking station

customer - return
bikes
docking_station - dock

As a member of the public
So I can decide whether to use the docking station
I want to see a bike that has been docked

docking_station - bikes_available?

As a member of the public,
So that I am not confused and charged unnecessarily,
I'd like docking stations not to release bikes when there are none available.

customer
docking_station - don't release bike if there are none
bike

As a maintainer of the system,
So that I can control the distribution of bikes,
I'd like docking stations not to accept more bikes than their capacity.

maintainer
docking_station - not accept
bikes

As a system maintainer,
So that I can plan the distribution of bikes,
I want a docking station to have a default capacity of 20 bikes.

maintainer
bikes
docking_station - have default capacity 20

As a system maintainer,
So that busy areas can be served more effectively,
I want to be able to specify a larger capacity when necessary.

user - give a capacity to docking station

user creates docking station with a number, new docking station with number as capacity

As a member of the public,
So that I reduce the chance of getting a broken bike in future,
I'd like to report a bike as broken when I return it.

customer - report broken bike
bike

user declares a bike broken, docking station acknowledges it


As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like docking stations not to release broken bikes.


As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like docking stations to accept returning bikes (broken or not).

user
customers
docking stations
bikes
