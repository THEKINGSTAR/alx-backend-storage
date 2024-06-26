#!/usr/bin/env python3
"""
Create a Cache class. In the __init__ method,
store an instance of the Redis client
as a private variable named _redis (using redis.Redis())
and
flush the instance using flushdb.

Create a store method that takes a data argument
and
returns a string.
The method should generate a random key (e.g. using uuid),
store the input data in Redis using the random key and return the key.
Type-annotate store correctly.
Remember that data can be a str, bytes, int or float.
"""


import functools
import redis
import uuid
import typing
from typing import Union
from typing import List
from typing import Any
from typing import Callable


def count_calls(method: Callable )-> Callable:
    """
    decorator that takes a single
    method Callable argument
    and
    returns a Callable.
    """
    return callable
class Cache:
    """

    """
    def __init__(self):
        """
        """
        self._redis = redis.Redis()
        self._redis.flushdb()

    def store(self, data: Union[str, bytes, int, float]) -> str:
        """
        store method that takes a data argument
        and
        returns a string.
        The method should generate a random key (e.g. using uuid),
        store the input data in Redis using the random key
        and
        return the key.
        """
        key = str(uuid.uuid4())
        self._redis.set(key, data)

        return key

    def get(self, key: str, fn: callable) -> Any:
        """
        get method that take a key string argument
        and
        an optional Callable argument named fn.
        This callable will be used to
        convert the data back to the desired format.
        conserve the original
        Redis.get
        behavior if the key does not exist.
        """
        value = self._redis.get(key)
        if fn:
            return fn(value) if value else value
        return value

    def get_str(self, key: str) -> Union[str, None]:
        """
        get_str
        that will automatically parametrize
        Cache.get
        with the correct conversion function.
        """
        return self.get(key, str)

    def get_int(self, key: str) -> Union[str, None]:
        """
        get_int that will automatically parametrize
        Cache.get
        with the correct conversion function.
        """
        return self.get(key, int)
