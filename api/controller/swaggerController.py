from api.config.globals import logger
from typing import Dict, List, Optional
from fastapi import APIRouter, Depends, FastAPI, HTTPException, Query, status, Response
from ..config import schemas
from ..config.database import SessionLocal, engine
from api.config.database import get_db
from fastapi.openapi.docs import get_swagger_ui_html
from pathlib import Path


schemas.Base.metadata.create_all(bind=engine)

PATH_APP_PY = Path(__file__)
PATH_PROJECT = PATH_APP_PY.parent.parent


router = APIRouter(
    prefix="/swagger",
    tags=["swagger"]
)


@router.get("/docs")
def swagger_docs():
    rsp = get_swagger_ui_html(openapi_url="/swagger/openapi.json",
                              title="Nchat API",
                              swagger_css_url="/swagger/swagger_css",
                              swagger_js_url="/swagger/swagger_js",
                              swagger_favicon_url="/swagger/favicon.png",
                              
                              )
    return rsp


@router.get('/swagger_css')
def swagger_css():
    logger.info(PATH_PROJECT)
    with open(Path(PATH_PROJECT, "static/fastapi/swagger-ui.css"), 'rt', encoding='utf-8') as f:
        swagger_css = f.read()
    return Response(swagger_css, headers={"Content-type": "text/css"})

@router.get('/swagger-ui.css.map')
def swagger_js():
    logger.info(PATH_PROJECT)
    with open(Path(PATH_PROJECT, "static/fastapi/swagger-ui.css.map"), 'rt', encoding='utf-8') as f:
        swagger_js = f.read()
    return Response(swagger_js, headers={"Content-type": "text/javascript"})


@router.get('/swagger_js')
def swagger_js():
    logger.info(PATH_PROJECT)
    with open(Path(PATH_PROJECT, "static/fastapi/swagger-ui-bundle.js"), 'rt', encoding='utf-8') as f:
        swagger_js = f.read()
    return Response(swagger_js, headers={"Content-type": "text/javascript"})


