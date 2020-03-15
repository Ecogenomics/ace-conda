# ACE Conda
ACE specific conda configuration packages.


The following organisation has been created within anaconda as a repository for ace packages:
https://anaconda.org/ace-channel

### Documentation
* [Configuring the environment](doc/environment.md)

### Example workflow

#### 1. Remove any existing packages built locally
`conda build purge`

#### 2. Build the package
`conda build pkg/pfam_search`

#### 3. Upload the package
`anaconda upload --user ace-internal /home/uqamussi_local/miniconda3/conda-bld/linux-64/pfam_search-0.1-0.tar.bz2`

