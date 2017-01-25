# Base dev machine . (dot) files

This repo is intended to be a record (and executable installation) of the
installations of programs, utilities, languages, databases, etc. required
for a developer working on NHS.UK related stuff.

Clone the repo somewhere on the local disk and run `./install-brew.sh`
This will:

* Install [Homebrew](http://brew.sh/) and some packages
* Install [Caskroom](https://caskroom.github.io/) and some applications

During the install of Homebrew you will be prompted for your password.

## Suggested tools

So as not to be totally perscriptive about what tools should be used, tools
that are favoured defaults are not included in the items that are installed.
Rather they are listed below. Should any of these want to be installed it is
simply a case of added each item to the appropriate install script and
rerunning it.

### brews

* [vim](http://www.vim.org/) - THE editor of choice
* [jq](https://stedolan.github.io/jq/) - CLI JSON processor

### casks

* [microsoft-azure-storage-explorer](http://storageexplorer.com/)
* [robomongo](https://robomongo.org/) - MongoDB client
* [wireshark](https://www.wireshark.org/) - Network protocol analyser 
