#
# Copyright 2008,2009 Free Software Foundation, Inc.
#
# SPDX-License-Identifier: GPL-3.0-or-later
#

# The presence of this file turns this directory into a Python package

'''
Hermes Lite 2 GNU Radio blocks
'''
import os

# import pybind11 generated symbols into the hermeslite2 namespace
try:
    # this might fail if the module is python-only
    from .hermeslite2_python import *
except ModuleNotFoundError:
    pass

# import any pure python here
#
