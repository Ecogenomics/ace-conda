# ACE Conda
ACE specific conda configuration packages.


The following organisation has been created within anaconda as a repository for ace packages:
https://anaconda.org/ace-internal

### Documentation
* [Configuring the environment](doc/environment.md)

### Example workflow

#### 1. Remove any existing packages built locally
`conda build purge`

#### 2. Build the package
To build all versions of the package run:

`conda build pkg/pfam_search`

To build a specific version of the package run:

`conda build pkg/pfam_search/0.1`

#### 3. Upload the package
`anaconda upload --user ace-internal /home/admin/miniconda3/conda-bld/linux-64/pfam_search-0.1-0.tar.bz2`

