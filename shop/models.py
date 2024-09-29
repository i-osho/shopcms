from django.db import models
import uuid
from django.urls import reverse


class Category(models.Model):
    class Meta:
        verbose_name_plural = "Categories"
    def __str__(self):
        return self.category
    def get_absolute_url(self):
        return reverse('category_list')
    
    category = models.CharField(max_length=255)


class Brand(models.Model):
    def __str__(self):
        return self.title
    def get_absolute_url(self):
        return reverse('brand_list')

    title = models.CharField(max_length=255)
    category = models.ForeignKey('Category', on_delete=models.SET_NULL, null=True)


class Items(models.Model):
    def __str__(self):
        return self.item_name
    class Meta:
        verbose_name_plural = "Items"
    def get_absolute_url(self):
        return reverse('item_list')

    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    item_name = models.CharField(max_length=255)
    item_description = models.TextField(max_length=5000)
    brand_name = models.ForeignKey('Brand', on_delete=models.SET_NULL, null=True)
    price = models.DecimalField(max_digits=10, decimal_places=2)
    buyer = models.ForeignKey('Buyers', on_delete=models.SET_NULL, null=True, blank=True,)


class Buyers(models.Model):
    class Meta:
        verbose_name_plural = "Buyers"
    def __str__(self):
        return "{} {} | {}".format(self.first_name, self.last_name, self.email)
    def get_absolute_url(self):
        return reverse('buyer_list')
    
    first_name = models.CharField(max_length=255)
    last_name = models.CharField(max_length=255)
    email = models.EmailField(max_length=255)
    phone = models.CharField(max_length=13)
    address = models.TextField(max_length=500)
    note = models.TextField(max_length=1000)
    
