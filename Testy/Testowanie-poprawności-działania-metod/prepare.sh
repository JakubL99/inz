curl -XPOST -H 'Content-Type: application/json' \
-d '{
    "name": "Jakub",
    "surname": "Lis",
    "email": "jakub.lis777@gmail.com",
    "password": "password"
}' -i http://api.micro:443/users/create/ 

curl -XPOST -H 'Content-Type: application/json' \
-d '{
    "name": "Dominik",
    "surname": "Nowicki",
    "email": "dominik.nowicki77@gmail.com",
    "password": "password"
}' -i http://api.micro:443/users/create/ 

curl -XPOST -H 'Content-Type: application/json' \
-d '{
    "name": "Stanisław",
    "surname": "Omen",
    "email": "stanisław.omen77@gmail.com",
    "password": "password"
}' -i http://api.micro:443/users/create/ 

curl -H 'Content-Type: application/json' \
-d '{
	"name": "Cyberpunk",
	"description": "cyberpunk", 
	"platform": "ps5", 
	"version": "pl",  
	"pegi": "19",  
	"price": "16", 
	"availability": 10 
}' -i http://api.micro:443/product/createProduct/

curl -H 'Content-Type: application/json' \
-d '{
	"name": "GTA V",
	"description": "GTA V", 
	"platform": "ps5", 
	"version": "pl",  
	"pegi": "19",  
	"price": "160", 
	"availability": 15 
}' -i http://api.micro:443/product/createProduct/

curl -H 'Content-Type: application/json' \
-d '{
	"name": "FIFA 21",
	"description": "FIFA 21", 
	"platform": "ps5", 
	"version": "pl",  
	"pegi": "3",  
	"price": "200", 
	"availability": 110 
}' -i http://api.micro:443/product/createProduct/