#### Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with translate_shell](#setup)
    * [What translate_shell affects](#what-translate_shell-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with translate_shell](#beginning-with-translate_shell)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)

## Overview

installs https://github.com/soimort/translate-shell on supported OS

## Module Description

Deploys using https://github.com/soimort/translate-shell#option-1-direct-download method to create executable in path, see https://github.com/soimort/translate-shell/blob/develop/README.md for functionality

## Setup

### What translate_shell affects

* provides capability to translate shell based documentation or inline interpriter using Google api

### Setup Requirements **OPTIONAL**

N/A

### Beginning with translate_shell

include translate_shell
class {'translate_shell':
  bin_dir =>  '/path/to/chosen/bin/dir', #default /usr/local/bin/
  }

## Usage
uses ISO-639-1 codes supported by Google https://cloud.google.com/translate/docs/languages

Simple module to install executable of translate-shell `trans`
CLI usage
`trans -t fr hello` #-t is target language code ie french is fr

usage with puppet man pages or help pages for example
`puppet describe file >file.txt && trans -t fr -b -i file.txt,`

## Reference



## Limitations

only tested on Rhel, centos and Darwin

## Development

feel free to update to add homebrew support, Debian etc

## Release Notes/Contributors/Etc **Optional**
