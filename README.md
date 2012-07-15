# chef-rbenv-vars

## Description

Installs the [rbenv-vars](https://github.com/sstephenson/rbenv-vars)
plugin for the rbenv::system install.

## Usage

Include `recipe[rbenv_vars]` in your run_list and override the defaults
you want changed.

## Installation

### Using Librarian

[Librarian-Chef][librarian] is a bundler for your Chef cookbooks.
Include a reference to the cookbook in a [Cheffile][cheffile] and run
`librarian-chef install`. To install Librarian-Chef:

    gem install librarian
    cd chef-repo
    librarian-chef init

To reference the Git version:

    cat >> Cheffile <<END_OF_CHEFFILE
    cookbook 'rbenv-vars',
      :git => 'https://github.com/hecticjeff/chef-rbenv-vars', :ref => 'v0.1.0'
    END_OF_CHEFFILE
    librarian-chef install
