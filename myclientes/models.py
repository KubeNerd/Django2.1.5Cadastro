from django.db import models

# Create your models here.
class Cliente(models.Model):
    nome =  models.CharField(max_length=250)
    email = models.EmailField()
    cpf  = models.CharField(max_length=14, unique=True)
    data_criacao =  models.DateField(auto_now_add=True)

    def __str__(self):
        return self.nome
  
    def __float__(self):
        return self.cpf