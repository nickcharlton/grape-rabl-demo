# -*- mode: ruby -*-
# vi: set ft=ruby ;

Vagrant.configure('2') do |config|
  config.vm.hostname = 'grape-rabl-demo'
  config.vm.box = 'nickcharlton/ruby-box'

  config.vm.network 'forwarded_port',
                    guest: 3000,
                    host: 3000,
                    auto_correct: true

  config.vm.provision 'shell', inline: 'sudo apt-get -yqq install libcurl3 '\
                      'libcurl3-gnutls libcurl4-openssl-dev libsqlite3-dev'
end
