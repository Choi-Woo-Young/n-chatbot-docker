from api.config.globals import logger
import html, bleach

def clean(text: str):
    try:
        logger.info(f'safety filter > clean - before: {text}')
        text = html.escape(bleach.clean(text))
        logger.info(f'safety filter > clean - after: {text}')
        return text
    except Exception as e:
        logger.error(f"safety filter - clean : {e}")