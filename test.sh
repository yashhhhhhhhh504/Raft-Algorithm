#!/bin/bash
rm -rf commit-log*

python3 "raft.py" "127.0.0.1" "5001" "[['127.0.0.1:5001', '127.0.0.1:5002', '127.0.0.1:5003', '127.0.0.1:5004', '127.0.0.1:5005']]" 0 
python3 "raft.py" "127.0.0.1" "5002" "[['127.0.0.1:5001', '127.0.0.1:5002', '127.0.0.1:5003', '127.0.0.1:5004', '127.0.0.1:5005']]" 1
python3 "raft.py" "127.0.0.1" "5003" "[['127.0.0.1:5001', '127.0.0.1:5002', '127.0.0.1:5003', '127.0.0.1:5004', '127.0.0.1:5005']]" 2
python3 "raft.py" "127.0.0.1" "5004" "[['127.0.0.1:5001', '127.0.0.1:5002', '127.0.0.1:5003', '127.0.0.1:5004', '127.0.0.1:5005']]" 3
python3 "raft.py" "127.0.0.1" "5005" "[['127.0.0.1:5001', '127.0.0.1:5002', '127.0.0.1:5003', '127.0.0.1:5004', '127.0.0.1:5005']]" 4
python3 "client.py" "[['127.0.0.1:5001', '127.0.0.1:5002', '127.0.0.1:5003', '127.0.0.1:5004', '127.0.0.1:5005']]"

# Python3 raft.py "127.0.0.1" "5001" "[['127.0.0.1:5001', '127.0.0.1:5002', '127.0.0.1:5003', '127.0.0.1:5004', '127.0.0.1:5005']]"