name             'email_handler'
maintainer       'The Authors'
maintainer_email 'you@example.com'
license          'all_rights'
description      'Installs/Configures email_handler'
long_description 'Installs/Configures email_handler'
version          '0.1.0'

# depends 'chef_handler'
# depends 'postfix'
# depends 'mailx'

['chef_handler', 'postfix', 'mailx'].each do |dep|
  depends dep
end
