from django.contrib import admin
from .models import Category, Brand, Buyers, Items

admin.site.register(Category)
admin.site.register(Brand)
admin.site.register(Buyers)
admin.site.register(Items)