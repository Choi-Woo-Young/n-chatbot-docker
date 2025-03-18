# formatters.py
import logging
import sqlparse

class SQLAlchemySQLFormatter(logging.Formatter):
    def format(self, record):
        sql = sqlparse.format(
            record.getMessage(),
            keyword_case='upper',
            identifier_case='lower',
            truncate_strings=50,
            reindent=True).strip('')
        sql = '\n\t\t '.join([l for l in sql.split('\n')])
        return sql
