from enum import Enum

class ServiceCode(str, Enum):
    ALL = "NICE_ALL_SVC"
    INTERNAL_GROUPWARE = "NICE_NGROUPWARE_SVC"
    EXTERNAL_GROUPWARE = "NICE_HGROUPWARE_SVC"
    WEBMAIL = "NICE_WEBMAIL_SVC"

class SelfServiceSuffix(str, Enum):
    OK = "_OK"

SELF_SERVICE_CODES = [
    ServiceCode.INTERNAL_GROUPWARE,
    ServiceCode.EXTERNAL_GROUPWARE,
    ServiceCode.WEBMAIL,
]

SELF_SERVICE_OK_CODES = [
    f"{code}{SelfServiceSuffix.OK}" for code in SELF_SERVICE_CODES
] 