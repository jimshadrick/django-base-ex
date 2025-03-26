# Django Base Project Example

This is a sample base template that can be used for a new Django project.

## Project Structure

- `myproject`: Contains the main Django project configuration.
- `core`: Contains the core application models and logic.
- `accounts`: App for user account management and password changes.
- `manage.py`: Django management script for running commands.

## Setup Instructions

1. Clone the repository.
2. Install the necessary dependencies using `pip install -r requirements.txt` or using `uv sync`
3. Run the Django development server using `python manage.py runserver`.

### Package Dependencies

- django>=5.1.7
- environs[django]>=14.1.1
- gunicorn>=23.0.0
- psycopg[binary]>=3.2.6
- whitenoise>=6.9.0

### Environment Variables

- `DJANGO_SECRET_KEY`: Secret key for the Django project.
- `DJANGO_ALLOWED_HOSTS`: List of allowed hosts for the Django project.
- `DJANGO_DEBUG`: Boolean value indicating whether the Django project is in debug mode.
- `DATABASE_URL`: Database connection string for the Django project.
- `CSRF_TRUSTED_ORIGINS`: List of trusted origins for the Django project.

### Additional Configuration

- `SECURE_PROXY_SSL_HEADER`: Header used to detect secure requests coming from behind a proxy.
- `AUTH_USER_MODEL`: Custom user model for the Django project.

## Usage

- Access the admin panel at `/admin/` to manage todos.
- View the home page placeholder at `/`.

## Additional Information

- The project uses a local PostgreSQL database by default with the connection string stored in `.env`.

## License

This project is licensed under the [MIT License](LICENSE).