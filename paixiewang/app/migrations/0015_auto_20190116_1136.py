# -*- coding: utf-8 -*-
# Generated by Django 1.11 on 2019-01-16 11:36
from __future__ import unicode_literals

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('app', '0014_auto_20190116_1134'),
    ]

    operations = [
        migrations.RenameField(
            model_name='cart',
            old_name='shoes',
            new_name='goods',
        ),
    ]
