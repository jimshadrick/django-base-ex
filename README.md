# Django Core Project Example

This is a sample base/core project that can be used as a template for a Django project.

## Project Structure

- `myproject`: Contains the main Django project configuration.
- `core`: Contains the core application models and logic.
- `accounts`: App for user account management and password changes.
- `manage.py`: Django management script for running commands.

## Setup Instructions

1. Clone the repository.
2. Install the necessary dependencies using `pip install -r requirements.txt`.
3. Run the Django development server using `python manage.py runserver`.

## Usage

- Access the admin panel at `/admin/` to manage todos.
- View the home page placeholder at `/`.

## Additional Information

- The project uses Sqlite for the backend while in development mode.
- The project uses PostgreSQL when it is deployed to a hosted environment.
- Secrets are managed unless working in a development environment where they are stored in the `.env` file.

## License

This project is licensed under the [MIT License](LICENSE).