# docker-django
Throwaway container to help me debug django smtp with Exchange 2013

# Set up
`docker run -it --rm -p 8000:8000 riazarbi/docker-django:latest`

# Some config
`nano app/settings.py`


Exchange works:
```
EMAIL_BACKEND = 'django.core.mail.backends.smtp.EmailBackend'
EMAIL_USE_TLS = True
EMAIL_HOST = 'mobimail.REDACTED'
EMAIL_HOST_USER = 'REDACTED'
EMAIL_HOST_PASSWORD = 'REDACTED'
EMAIL_PORT = 587
DEFAULT_FROM_EMAIL = 'REDACTED'
```

Gmail works:
```
EMAIL_BACKEND = "django.core.mail.backends.smtp.EmailBackend"
EMAIL_HOST = "smtp.gmail.com"
EMAIL_USE_TLS = True
EMAIL_PORT = 587
EMAIL_HOST_USER = "REDACTED"
EMAIL_HOST_PASSWORD = "REDACTED"
```

# some commands
`python manage.py shell`  
`from django.core.mail import send_mail`  
`send_mail('subject', 'message', 'FROMREDACTED', ['TOREDACTED'], fail_silently=False,)`  
