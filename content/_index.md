---
# Leave the homepage title empty to use the site title
title: ''
summary: ''
date: 2026-01-05
type: landing

design:
  spacing: '0'

sections:
  - block: dev-hero
    id: hero
    content:
      username: me
      greeting: "Hi, I'm"
      show_status: false
      show_scroll_indicator: false
      typewriter:
        enable: true
        prefix: "I "
        strings:
          - "lead the most successful team in the history of autonomous racing"
          - "develop competition-winning autonomous racing algorithms"
          - "build blazing fast, edge-deployed robotics applications"
          - "design scalable software architectures in autonomous driving"
          - "work on open source libraries and tools"
        type_speed: 25
        delete_speed: 10
        pause_time: 3000
      cta_buttons:
        - text: View My Work
          url: "#projects"
          icon: arrow-down
        - text: Get In Touch
          url: "#contact"
          icon: envelope
    design:
      style: centered
      avatar_shape: circle
      animations: true
      background:
        color:
          light: "#fafafa"
          dark: "#0a0a0f"
      spacing:
        padding: ["6rem", "0", "4rem", "0"]
  

  # Filterable Portfolio - Alpine.js powered project filtering
  - block: portfolio
    id: projects
    content:
      title: "Highlights"
      subtitle: "Selected milestones, media coverage, and projects from recent years"
      count: 0
      filters:
        folders:
          - projects
      buttons:
        - name: All
          tag: '*'
        - name: TUM Autonomous Motorsport
          tag: TUM Autonomous Motorsport
        - name: My Open Source Projects
          tag: Open Source
      default_button_index: 0
    design:
      columns: 3
      background:
        color:
          light: "#ffffff"
          dark: "#0d0d12"
      spacing:
        padding: ["4rem", "0", "4rem", "0"]

  
  # Visual Tech Stack - Icons organized by category
  - block: tech-stack
    id: skills
    content:
      title: "Research and Tech Stack"
      subtitle: "Research focus areas together with the tools I use in practice"
      categories:
        - name: Research Focus
          items:
            # - name: Autonomous Driving
            #   icon: hero/truck
            - name: Simulation
              icon: hero/server-stack
            - name: Control
              icon: hero/variable
            - name: Modularity
              icon: hero/puzzle-piece
            - name: Evaluation
              icon: hero/chart-bar
        - name: Programming & Scientific Computing
          items:
            - name: C++
              icon: devicon/cplusplus
            - name: Python
              icon: devicon/python
            - name: IEC 61131-3
              icon: hero/cpu-chip
            - name: Matlab
              icon: devicon/matlab
        - name: Frameworks & Tools
          items:
            - name: ROS 2
              icon: devicon/ros
            - name: Cmake
              icon: devicon/cmake
            - name: Pytorch
              icon: devicon/pytorch
            - name: Pytest
              icon: devicon/pytest
        - name: Development & Deployment
          items:
            - name: Docker
              icon: devicon/docker
            - name: Ubuntu
              icon: devicon/ubuntu
            - name: Git
              icon: devicon/git
            - name: CI/CD
              icon: devicon/gitlab
        - name: Other Tools
          items:
            - name: PTC Creo
              icon: hero/cog
            - name: CATIA V5
              icon: hero/cog-8-tooth
            - name: LaTeX
              icon: hero/document-text
            - name: Microsoft Office
              icon: hero/document-text
        - name : Home Automation
          items:
            - name: Nextcloud
              icon: hero/cloud
            - name: Home Assistant
              icon: hero/home
            - name: Ultimaker Cura
              icon: hero/cube
    design:
      columns: 4
      style: grid
      show_levels: false
      background:
        color:
          light: "#ffffff"
          dark: "#0d0d12"
      spacing:
        padding: ["4rem", "0", "4rem", "0"]

  - block: collection
    id: publications
    content:
      count: 0
      title: My Publications
      text: ''
      filters:
        folders:
          - publications
        exclude_featured: false
    design:
      view: citation
      background:
        color:
          light: "#ffffff"
          dark: "#0d0d12"
  
  # Contact Section
  - block: contact-info
    id: contact
    content:
      title: Get In Touch
      subtitle: "Let's build something amazing together"
      text: |-
        I'm always interested in hearing about new projects and opportunities.
        Whether you're looking to hire, collaborate, or just want to say hi, feel free to reach out!
    design:
      columns: '1'
      background:
        color:
          light: "#ffffff"
          dark: "#0d0d12"
      spacing:
        padding: ["4rem", "0", "4rem", "0"]
---
