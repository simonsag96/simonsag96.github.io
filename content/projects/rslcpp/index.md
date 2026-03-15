---
title: "rslcpp"
date: 2026-01-01
summary: "A framework allowing to build determinstic simulations using existing ROS 2 Nodes without code changes."
tags:
  - Open Source
tech_stack:
  - C++
  - ROS 2
  - CMake
links:
  - type: github
    url: https://github.com/TUMFTM/rslcpp
    label: Code
  - type: external
    url: https://arxiv.org/abs/2601.07052
    label: Paper
featured: true
---

`rslcpp` is an open-source C++ framework for deterministic ROS 2 simulations. It runs standard `rclcpp::Node` components in a single-process simulation loop with explicit time control, making experiments reproducible and practical for debugging, testing, and learning-based workflows.
