#!/usr/bin/env python3
"""
Function that inserts a new document
"""


def insert_school(mongo_collection, **kwargs):
    """
    Inserts a new document in a collection
    """
    new = mongo_collection.insert_one(kwargs)
    return new.inserted_id
