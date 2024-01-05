#!/usr/bin/python3
""" This script gathers data from an API
"""

import requests
import sys

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python3 script_name.py <employee_id>")
        sys.exit(1)

    employee_id = sys.argv[1]
    base_url = "https://jsonplaceholder.typicode.com/users"
    url = f"{base_url}/{employee_id}"

    response = requests.get(url)
    if response.status_code != 200:
        print("Failed to fetch employee data.")
        sys.exit(1)

    employee_data = response.json()
    employee_name = employee_data.get('name')

    todo_url = f"{url}/todos"
    todo_response = requests.get(todo_url)
    if todo_response.status_code != 200:
        print("Failed to fetch TODO data.")
        sys.exit(1)

    tasks = todo_response.json()
    done_tasks = [task for task in tasks if task.get('completed')]
    total_tasks = len(tasks)
    num_done_tasks = len(done_tasks)

    print(f"Employee {employee_name} is done\
          with tasks({num_done_tasks}/{total_tasks}):")
    for task in done_tasks:
        print(f" {' ' * 5}{task.get('title')}")
