import mysql.connector

class Database:
    
    def __init__(self,user,password,host,database):
        self.user = user
        self.password = password
        self.host = host
        self.database = database
        self.connection = None

    def connnection(self):
        self.connection = mysql.connector.connect(
        user=self.user,password=self.password,
        host=self.host,
        database=self.database
        )
        if self.connection.is_connected():
            print("Successfull Connection")

    def query(self,query):
        cursor = self.connection.cursor()
        cursor.execute(query)
        return cursor.fetchall()

class Product:
    
    def __init__(self,name,description,price,quantity,id_category):
        self.name = name
        self.description = description
        self.price = price
        self.quantity = quantity
        self.id_category = id_category
    
    def add_quantity(self):
        