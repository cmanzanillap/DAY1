#!/bin/bash

module load groups
module --ignore_cache load WUR/ABGC/SnifferAnalyzer

sniffer_analyzer herd_robot101.csv herd_sniffer101_Loggy_42s_FD1.txt 42