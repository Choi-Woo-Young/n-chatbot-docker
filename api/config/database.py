from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker
import api.config.globals  as g
from sqlalchemy import Column, Integer, DateTime, Boolean, func
from sqlalchemy.ext.declarative import as_declarative, declared_attr
from datetime import datetime

DB_URL = g.env_settings.db_url
DB_NAME = g.env_settings.db_name
DB_USER = g.env_settings.db_user
DB_PASSWORD = g.env_settings.db_password
CURRENT_SCHEMA = g.env_settings.current_schema

SQLALCHEMY_DATABASE_URL = f"postgresql://{DB_USER}:{DB_PASSWORD}@{DB_URL}/{DB_NAME}?options=-csearch_path%3D{CURRENT_SCHEMA}"

engine = create_engine( SQLALCHEMY_DATABASE_URL, echo=False, pool_size=30, pool_timeout=60) #, connect_args={"check_same_thread": False}
SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)

@as_declarative()
class Base:
    @declared_attr
    def __tablename__(cls) -> str:
        return cls.__name__.lower()

    created_by = Column(Integer, unique=False, index=False)
    created_time = Column(DateTime(timezone=True), default=datetime.now)
    modified_by = Column(Integer, unique=False, index=False)
    last_modified_time = Column(DateTime(timezone=True), default=datetime.now, onupdate=datetime.now)
    delete_yn = Column(Boolean, unique=False, index=False, default=False)


# Dependency
def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()