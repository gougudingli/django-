# -*- coding: utf-8 -*-
# Generated by Django 1.11 on 2019-01-14 10:58
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('app', '0010_list_goods'),
    ]

    operations = [
        migrations.CreateModel(
            name='shoes',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('img', models.CharField(max_length=1000)),
                ('shoesid', models.CharField(max_length=10)),
                ('sc', models.CharField(max_length=100)),
                ('price', models.CharField(max_length=10)),
            ],
        ),
    ]
