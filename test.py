import asyncio
import os


# this script starts the robo
# it is the entry point of the application
print("--- ")
print("Hello World")

for key in os.environ:
    print(key, os.environ[key])

print("Goodbye World")
print("--- ")

