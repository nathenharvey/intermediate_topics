name "web"
description "Web Server"
run_list "role[base]", "recipe[apache::ohai_plugin]", "recipe[apache]"
