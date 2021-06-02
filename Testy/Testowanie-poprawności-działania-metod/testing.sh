echo "############################ Testing microservices users ############################" &>> user_result.txt
echo "Method create\n" &>> user_result.txt
curl -XPOST -H 'Content-Type: application/json' \
-d '{
    "name": "Jan",
    "surname": "Nowak",
    "email": "jan.nowak@gmail.com",
    "password": "password"
}' -i http://api.micro:443/users/create/ -w "%{time_connect},%{time_total},%{speed_download},%{http_code},%{size_download},%{url_effective}\n" &>> user_result.txt

echo "############################ Method Auth ############################" &>> user_result.txt
curl -H 'Content-Type: application/json' \
-d '{
    "email": "jakub.lis777@gmail.com",
    "password": "password"
}' -i http://api.micro:443/users/auth/ -w "%{time_connect},%{time_total},%{speed_download},%{http_code},%{size_download},%{url_effective}\n" &>> user_result.txt

echo "############################ Method GetUser ############################" &>> user_result.txt
curl -H 'Content-Type: application/json' \
-d '{
    "id": "2ebf2414-21da-48ef-b7aa-96abc89ac34f"
}' -i http://api.micro:443/users/get/ -w "%{time_connect},%{time_total},%{speed_download},%{http_code},%{size_download},%{url_effective}\n" &>> user_result.txt

echo "############################ Method GetAll ############################ " &>> user_result.txt
curl -H 'Content-Type: application/json' \
-d '{}' -i http://api.micro:443/users/getAll/ -w "%{time_connect},%{time_total},%{speed_download},%{http_code},%{size_download},%{url_effective}\n" &>> user_result.txt

echo "############################ Method ValidateToken ############################" &>> user_result.txt
curl -H 'Content-Type: application/json' \
-d '{
"token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVc2VyIjp7ImlkIjoiMmViZjI0MTQtMjFkYS00OGVmLWI3YWEtOTZhYmM4OWFjMzRmIiwibmFtZSI6Ikpha3ViIiwic3VybmFtZSI6IkxpcyIsImVtYWlsIjoiamFrdWIubGlzNzc3QGdtYWlsLmNvbSIsInBhc3N3b3JkIjoiJDJhJDEwJHpqR3k4S01qQWo2czVkRnY3UUhMTk9uc1I1UWI2TmNwL0JmbHlVelIzbDlEaTA5Y1Bnd21pIn0sImV4cCI6MTUwMDAsImlzcyI6InVzZXJzIn0.zl8O2XC5edmuK_5PveEch332ghzK-VAeHgZV94fZUvY"
}' -i http://api.micro:443/users/validateToken/ -w "%{time_connect},%{time_total},%{speed_download},%{http_code},%{size_download},%{url_effective}\n" &>> user_result.txt



echo "############################ Testing microservices product ############################" &>> product_result.txt
echo "############################ Method CreateProduct ############################" &>> product_result.txt
curl -H 'Content-Type: application/json' \
-d '{
	"name": "Wiedźmin 3",
	"description": "Wiedźmin 3", 
	"platform": "ps5", 
	"version": "pl",  
	"pegi": "18",  
	"price": "164", 
	"availability": 10 
}' -i http://api.micro:443/product/createProduct/ -w "%{time_connect},%{time_total},%{speed_download},%{http_code},%{size_download},%{url_effective}\n" &>> product_result.txt

echo "############################ Method ListProduct ############################" &>> product_result.txt
curl -H 'Content-Type: application/json' \
-d '{}' -i http://api.micro:443/product/list/ -w "%{time_connect},%{time_total},%{speed_download},%{http_code},%{size_download},%{url_effective}\n" &>> product_result.txt

echo "############################ Method DeleteProduct ############################" &>> product_result.txt
curl -H 'Content-Type: application/json' \
-d '{
	"id": "609cd2e26619b148e45b7348"
}' -i http://api.micro:443/product/deleteProduct/ -w "%{time_connect},%{time_total},%{speed_download},%{http_code},%{size_download},%{url_effective}\n" &>> product_result.txt

echo "############################ Method GetProduct ############################" &>> product_result.txt
curl -H 'Content-Type: application/json' \
-d '{
	"id": "609cd2e26619b148e45b7348"
}' -i http://api.micro:443/product/getProduct/ -w "%{time_connect},%{time_total},%{speed_download},%{http_code},%{size_download},%{url_effective}\n" &>> product_result.txt



echo "############################ Testing microservices cart ############################" &>> cart_result.txt
echo "############################ Method CreateCart ############################" &>> cart_result.txt
curl -H 'Content-Type: application/json' \
-d '{
	"idProduct": "609cd2e26619b148e45b7349",
	"idUser": "2ebf2414-21da-48ef-b7aa-96abc89ac34f"
}' -i http://api.micro:443/cart/create/ -w "%{time_connect},%{time_total},%{speed_download},%{http_code},%{size_download},%{url_effective}\n" &>> cart_result.txt

echo "############################ Method GetCart ############################" &>> cart_result.txt
curl -H 'Content-Type: application/json' \
-d '{
	"idUser": "2ebf2414-21da-48ef-b7aa-96abc89ac34f"
}' -i http://api.micro:443/cart/getCart/ -w "%{time_connect},%{time_total},%{speed_download},%{http_code},%{size_download},%{url_effective}\n"  &>> cart_result.txt

echo "############################ Method DeleteCart ############################" &>> cart_result.txt
curl -H 'Content-Type: application/json' \
-d '{
	"idUser": "2ebf2414-21da-48ef-b7aa-96abc89ac34f"
}' -i http://api.micro:443/cart/deleteCart/ -w "%{time_connect},%{time_total},%{speed_download},%{http_code},%{size_download},%{url_effective}\n" &>> cart_result.txt

echo "############################ Method DeleteProduct ############################" &>> cart_result.txt
curl -H 'Content-Type: application/json' \
-d '{
	"idProduct": "609cd2e26619b148e45b7348",
	"idUser": "39399d25-ef5e-46a3-a4f0-17606f1824a2"
}' -i http://api.micro:443/cart/deleteProduct/ -w "%{time_connect},%{time_total},%{speed_download},%{http_code},%{size_download},%{url_effective}\n" &>> cart_result.txt



echo "############################ Testing microservices purchase ############################" &>> purchase_result.txt
echo "############################ Method Start ############################" &>> purchase_result.txt
curl -H 'Content-Type: application/json' \
-d '{
	"idUser": "ac86aff5-1cb0-4635-86bc-85e7c535c818"
}' -i http://api.micro:443/purchase/start/ -w "%{time_connect},%{time_total},%{speed_download},%{http_code},%{size_download},%{url_effective}\n" &>> purchase_result.txt

echo "############################ Method Implementation ############################" &>> purchase_result.txt
curl -H 'Content-Type: application/json' -d '{
"idUser": "ac86aff5-1cb0-4635-86bc-85e7c535c818",
"address": { 
"Country": "Poland", 
"City": "Warsaw", 
"Post": "00-202", 
"Street": "Świętojerska", 
"Number": "46/24" 
} 
}' -i http://api.micro:443/purchase/implementation/ -w "%{time_connect},%{time_total},%{speed_download},%{http_code},%{size_download},%{url_effective}\n" &>> purchase_result.txt