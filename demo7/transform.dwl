%dw 2.0
output application/json
---
payload map ((item, index) -> 
{
   Item_Type : item.Item_Type,
   Users : (item.Users splitBy  ";") map ((item1, index1) -> 
    Name : (item1 splitBy  "/")[0]
)
}
)



//here,we want every user name to be a individual object for that we have used map function and splitBy function to seprate the each user.