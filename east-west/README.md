# Setting up a demo for a shared index Inventory with imaginary libraries "East" and "West"

To set up library structures for "East" and "West" demo ReShare libraries on a freshly installed FOLIO instance

- delete sample inventory records (if any)
- delete sample institutions and locations
- create the East and West library and locations structures

A script setting variables for the target host and tenant and authenticating the user by password must be invoked. At the time of writing there are two such settings files in this directory: one for tenant 'diku' at 'localhost' and another for 'si-cardinal'.

So to clear out FOLIO's default sample locations for 'diku' on localhost, do:

./delete-folio-sample-locations.sh diku@localhost:9130.sh

And to install East's and West's locations and library codes, do:

./create-sample-library-structure.sh diku@localhost:9130.sh
