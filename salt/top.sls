base:
  'G@role:so-sensor':
    - ssl
    - common
    - firewall
    - pcap
    - suricata
    - bro
    - filebeat

  'G@role:so-eval':
    - ca
    - ssl
    - common
    - firewall
    - master
    - idstools
    - redis
    - elasticsearch
    - logstash
    - kibana
    - pcap
    - suricata
    - bro
    - utility


  'G@role:so-master':
    - ca
    - ssl
    - common
    - firewall
    - master
    - idstools
    - redis
    - elasticsearch
    - logstash
    - kibana
    - utility

  # Storage node logic

  'G@role:so-node and I@node:node_type:parser':
    - match: pillar
    - common
    - firewall
    - logstash

  'G@role:so-node and I@node:node_type:hot':
    - match: pillar
    - common
    - firewall
    - logstash
    - elasticsearch

  'G@role:so-node and I@node:node_type:warm':
    - match: pillar
    - common
    - firewall
    - elasticsearch

  'G@role:so-node and I@node:node_type:storage':
    - match: compound
    - common
    - firewall
    - logstash
    - elasticsearch

  'G@role:mastersensor':
    - common
    - firewall
    - sensor
    - master
