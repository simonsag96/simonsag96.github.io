---
# Leave the homepage title empty to use the site title
title: ''
date: 2026-09-10
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
          - "led the most successful team in the history of autonomous racing"
          - "developed competition-winning autonomous racing algorithms"
          - "build blazing-fast, edge-deployed robotics applications"
          - "design scalable software architectures in autonomous driving"
          - "work on open-source libraries and tools"
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
      # Hand-ordered rather than by date: the first row is the racing story
      # (championship -> the numbers behind it -> the public coverage), the
      # second row the open source work. Date order buried the championship in
      # the bottom row and let any new entry reshuffle the section.
      sort_by: Weight
      sort_ascending: true
      filters:
        folders:
          - projects
      buttons:
        - name: All
          tag: '*'
        - name: TUM Autonomous Motorsport
          tag: TUM Autonomous Motorsport
        - name: My Open-Source Projects
          tag: Open-Source
      default_button_index: 0
      # No /projects/ archive page is rendered any more (see content/projects/_index.md).
      archive:
        enable: false
    design:
      # Two per row at the same tile size as three used to be - the block's
      # container is narrowed to match (see the fork's max-w note).
      columns: 2
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
      title: "Research & Tech Stack"
      subtitle: "Research focus areas together with the tools I use in practice"
      categories:
        - name: Research Focus
          items:
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
            - name: MATLAB
              icon: devicon/matlab
        - name: Frameworks & Tools
          items:
            - name: ROS 2
              icon: devicon/ros
            - name: CMake
              icon: devicon/cmake
            - name: PyTorch
              icon: devicon/pytorch
            - name: pytest
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
      # `title` stays empty on purpose: the collection block renders its own
      # title as a plain div, a size smaller than the other section headings.
      # publication--start.html renders `heading` as a real <h2> instead.
      title: ''
      heading: My Publications
      filters:
        folders:
          - publications
        exclude_featured: false
    design:
      view: publication
      background:
        color:
          light: "#ffffff"
          dark: "#0d0d12"
  
  # Contact Section
  - block: contact-info
    id: contact
    content:
      title: Get In Touch
      # The invitation lives in the subtitle, centred under the heading, so the
      # card below holds only the two action groups (see the fork note in
      # layouts/_partials/hbx/blocks/contact-info/block.html).
      # The address comes from `email` in data/authors/me.yaml, which the block
      # also uses to de-duplicate the mailto entry out of the social icon row.
      subtitle: |-
        Always glad to hear about research collaborations, new opportunities, or questions about the work.
        Email and LinkedIn both reach me — whichever you prefer.
      text: ""
    design:
      columns: '1'
      background:
        color:
          light: "#ffffff"
          dark: "#0d0d12"
      spacing:
        padding: ["4rem", "0", "4rem", "0"]
---
