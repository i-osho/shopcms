from django.urls import path
from . import views

urlpatterns = [
    path('', views.home, name='home'),
    path('categories/', views.CategoriesListView.as_view(), name='categories'),
    path('brands/', views.BrandsListView.as_view(), name='brands'),
    path('items/', views.ItemsListView.as_view(), name='items'),
    path('buyers/', views.BuyersListView.as_view(), name='buyers'),

    #-------------------FORMS--------------------
    path('category-add/', views.CategoryAddView.as_view(), name='category-add'),
    path('brand-add/', views.BrandAddView.as_view(), name='brand-add'),
    path('item-add/', views.ItemAddView.as_view(), name='item-add'),
    path('buyer-add/', views.BuyerAddView.as_view(), name='buyer-add'),
]
