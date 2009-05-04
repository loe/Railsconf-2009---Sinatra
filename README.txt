Sinatra Tutorial Prep
=====================

The recent release of Rack 1.0 and Thin 1.2.1 can lead
to rubygems version conflicts while running through the
Sinatra tutorial examples. Follow the instructions below
if you run into these issues.

Uninstall Rack 1.0 if you installed it previously:

    sudo gem uninstall rack -v 1.0
    sudo gem uninstall thin -v 1.2.1

Install sinatra and shotgun:

    sudo gem install rack -v 0.9.1
    sudo gem install thin -v 1.0.0
    sudo gem install shotgun
    sudo gem install sinatra
