## all queries can be accessible througth postman or heroku at this end point

## https://dashboard.heroku.com/apps/graphql-ruby

## first query:

query{ intervention(id:3){ 
  startInterv 
  stopInterv address{ 
    addressInformation} } }
    
    
## addressInformation is a custom field created that goes and gets the rest of the required info all in one function 

## second query:




query {customer{
  id
	companyName
  cpyContactEmail
  cpyContactPhone
  techManagerServiceEmail
  techAuthorityServicePhone
  techAuthorityServiceFullName
  addressId
  }
}



## third query: 

  {employee(id:4){
id
lastname
firstname
intervention{
id{
building{
id{
buildingDetail{
id
infokey
value
create_at
updated_at}}}}}

## all possible queries:
## coming soon , i didnt have them ready last friday but did want to include them

Claude St-Laurent