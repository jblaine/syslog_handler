syslog_handler Cookbook
=======================

Report and Error handler for Opscode Chef to log the basic essential information.

Example output from an example syslog log file:

```
Aug  2 17:04:05 web33-x9 chef[13072]: status=success total_resources=171 updated_resources=6 elapsed_time=117.646907
```

Based roughly on the `graphite_handler` code from Ian Meyer, Peter Donald, et al.

Requirements
------------

As usual for handlers, the [chef_handler](http://community.opscode.com/cookbooks/chef_handler) cookbook is mandatory (it must be able to be referenced, so in the Chef Server case, it must be uploaded to the server).

Attributes
----------

* `['chef_client']['handler']['syslog']['identity']` : Syslog lines show as this identity. Type: String. Defaut: `'chef'`.

* `['chef_client']['handler']['syslog']['facility']` : Syslog under this syslog facility. Type: Ruby variable (constant from `Syslog::Constants`). Default: `Syslog::LOG_DAEMON`

* `['chef_client']['handler']['syslog']['fail_priority']` : Syslog as this priority on Chef run failure.  Type: Ruby variable (constant from `Syslog::Constants`). Default: `Syslog::LOG_ERR`

* `['chef_client']['handler']['syslog']['success_priority']` : Syslog as this priority on Chef run success. Type: Ruby variable (constant from `Syslog::Constants`). Default: `Syslog::LOG_INFO`

Usage
-----

Just include `syslog_handler` very early (if not first) in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[syslog_handler]"
  ]
}
```

Contributing
------------

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Submit a Pull Request using Github

License and Authors
-------------------

The MIT License (MIT)

Copyright (c) 2013-2014 Charles J Blaine

Contributions by: Sergio Rodriguez, "laistu" on GitHub, Olivier Bazoud

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
