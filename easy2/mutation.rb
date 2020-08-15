# I believe the code will print [Moe, Larry, CURLY, SHEMP, Harpo, CHICO, Groucho, Zeppo]
# because when array2 is filled with elements form array1, they are references to
# elements in array1 so changes to them are reflected by those in array2.

# This can cause trouble if you are copying elements from one array and later enact change
# on those first elements and don't want the same done to the latter set. You can avoid it by
# using array.map to create the new array.