# CHANGELOG for syslog_handler

This file is used to list changes made in each version of syslog_handler.

## 0.1.8:

* Don't require the syslog module on Windows

## 0.1.5:

* Syslog exception info when there's a failure
* Log exception info when there's a Syslog failure

## 0.1.4:

* There was no 0.1.4 really

## 0.1.3:

* Use 'action :nothing' for the resource declaration in the default recipe so as to not trigger the resource enabling twice. It happens already as part of the end.run_action()

## 0.1.2:

* Added 'supports' and 'depends' data to metadata.rb

## 0.1.1:

* Typo in syslog priority variable

## 0.1.0:

* Initial release of syslog_handler

- - -
Check the [Markdown Syntax Guide](http://daringfireball.net/projects/markdown/syntax) for help with Markdown.

The [Github Flavored Markdown page](http://github.github.com/github-flavored-markdown/) describes the differences between markdown on github and standard markdown.
