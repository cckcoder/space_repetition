# Django REST

### Technologies

- Django 3.x
- [Django REST](https://www.django-rest-framework.org/)
- [Poetry](https://python-poetry.org/)
- Postgres

### How to use poetry

`poetry add djangorestframework psycopg2`

### Initial Setup

1. `django-admin startproject [projectname]`
1. create a virtual environment: `python -m venv env`
1. Go into virtual environment: `source env/bin/activate`
1. Then init poetry: `poetry init`
1. install `djangorestframework` and `psycopg2` like `poetry add djangorestframework psycopg2`
1. create directory apps/users then `python manage.py startapp users apps/users`
1. Setup custom User model and custom user manager: https://docs.djangoproject.com/en/3.1/topics/auth/customizing/
1. then add `AUTH_USER_MODEL = 'users.User'` in space_repetting/setting.py

```py
AUTH_USER_MODEL = 'users.User'
```

```py
from django.contrib import admin
from .models import User


class UsersAdmin(admin.ModelAdmin):
    list_display = (
        'email',
        'is_admin',
    )

admin.site.register(User, UsersAdmin)
```

### Config postgres

```
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql',
        'NAME': 'space_repetition',
        'USER': 'sr_admin',
        'PASSWORD': '',
        'HOST': '127.0.0.1',
        'PORT': '',
    }
}
```

### User

1. email: codewizz@codewizz.com
1. pass: eve555%%
