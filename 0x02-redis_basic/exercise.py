#!/usr/bin/env python3
"""
Redis module
"""
import redis
import uuid
from typing import Union, Callable, Optional


class Cache:
    """ Cache class
    """

    def __init__(self):
        """ Constructor
        """
        self._redis = redis.Redis()
        self._redis.flushdb()

    def store(self, data: Union[str, bytes, int, float]) -> str:
        """ Generate a random key, store the input data in Redis using the key
        and return the key
        """
        key = str(uuid.uuid4())
        self._redis.set(key, data)
        return key

    def get(self, key: str, fn: Optional[Callable] = None) -> Union[str, bytes, int, float, None]:
        """ Get the data stored in Redis using the key"""
        data = self._redis.get(key)
        if data is None:
            return None
        if fn:
            return fn(data)
        return data

    def get_str(self, key: str) -> Optional[str]:
        """ Get the data stored in Redis using the key as a string"""
        return self.get(key, lambda d: d.decode("utf-8"))

    def get_int(self, key: str) -> Optional[int]:
        """ Get the data stored in Redis using the key as an integer"""
        return self.get(key, lambda d: int(d))