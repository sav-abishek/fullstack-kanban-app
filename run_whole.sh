

export ENV="local"
export FLASK_SECRET_KEY="flaskislove"
echo "${ENV} ${FLASK_SECRET_KEY}"
celery -A app.celery worker -l info &
celery -A app.celery beat -l info &
python app.py

deactivate
