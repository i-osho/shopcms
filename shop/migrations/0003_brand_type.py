# Generated by Django 5.0.6 on 2024-06-28 15:39

import django.db.models.deletion
from django.db import migrations, models


class Migration(migrations.Migration):
    dependencies = [
        ("shop", "0002_remove_category_brand"),
    ]

    operations = [
        migrations.AddField(
            model_name="brand",
            name="type",
            field=models.ForeignKey(
                null=True,
                on_delete=django.db.models.deletion.SET_NULL,
                to="shop.category",
            ),
        ),
    ]
