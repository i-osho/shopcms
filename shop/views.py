from django.shortcuts import render
from django.views import generic
from .models import Category, Brand, Items, Buyers

class CategoriesListView(generic.ListView):
    model = Category

class BrandsListView(generic.ListView):
    model = Brand

class ItemsListView(generic.ListView):
    model = Items

class BuyersListView(generic.ListView):
    model = Buyers

def home(request):
    return render(request, 'shop/home.html')

#-------------------FORMS--------------------

class CategoryAddView(generic.CreateView):
    model = Category
    fields = '__all__'

class BrandAddView(generic.CreateView):
    model = Brand
    fields = '__all__'

class ItemAddView(generic.CreateView):
    model = Items
    fields = '__all__'

class BuyerAddView(generic.CreateView):
    model = Buyers
    fields = '__all__'