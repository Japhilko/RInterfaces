# -*- coding: utf-8 -*-
"""
Created on Tue Apr 11 12:58:28 2017

@author: kolbjp
"""

!pip install feather

import pandas
import feather

flights = pandas.read_csv("https://raw.githubusercontent.com/ismayc/pnwflights14/master/data/flights.csv")

flights = flights[flights['dest'] == "ORD"]

# Select carrier and delay columns and drop rows with missing values
flights = flights[['carrier', 'dep_delay', 'arr_delay']]
flights = flights.dropna()
print flights.head(10)

# Write to feather file for reading from R
feather.write_dataframe(flights, "flights.feather")
