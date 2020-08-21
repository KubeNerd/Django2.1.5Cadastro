from django.urls import path
from .views import lista_de_cliente,adicionar_cliente,editar_cliente,remover_cliente

urlpatterns = [
    path('',lista_de_cliente, name='lista_de_clientes'),
    path('adicionar_cliente/', adicionar_cliente, name='adicionar_cliente'),
   	path('editar_cliente/<int:id>', editar_cliente,name='editar_cliente'),
   	path('remover_cliente/<int:id>', remover_cliente,name='remover_cliente')
]
