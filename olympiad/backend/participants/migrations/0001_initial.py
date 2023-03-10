# Generated by Django 4.1.6 on 2023-02-12 03:29

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Participant',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('email', models.EmailField(help_text='Example@mail.ru', max_length=254)),
                ('phone', models.CharField(help_text='+7 (___) ___-__-__', max_length=20)),
                ('fio', models.CharField(help_text='ФИО', max_length=100)),
                ('institution', models.CharField(help_text='РГЭУ(РИНХ)', max_length=100)),
            ],
        ),
    ]
