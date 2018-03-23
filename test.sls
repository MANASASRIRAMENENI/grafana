grafana-conf_enable-ldap:
  module.run:
    - name: cp.get_file
    - path: 'salt://grafana/templates/grafana.ini.tpl'
    - dest: /etc/grafana/grafana.ini

grafana_ldap-conf:
  module.run:
    - name: cp.get_file
    - path: 'salt://grafana/templates/ldap.toml.tpl'
    - dest: /etc/grafana/ldap.toml

grafana restart:
  cmd.run:
    - name: service grafana-server restart

