syslog_handler Cookbook
=======================

Report and Error handler for Opscode Chef to log the basic essential information.

Example output from an example syslog log file:

```
Aug  2 17:04:05 mtclic chef[13072]: status=success total_resources=171 updated_resources=6 elapsed_time=117.646907 
```

Attributes
----------

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['chef_client']['handler']['syslog']['identity']</tt></td>
    <td>String</td>
    <td>Syslog lines show as this identity</td>
    <td><tt>chef</tt></td>
  </tr>
  <tr>
    <td><tt>['chef_client']['handler']['syslog']['facility']</tt></td>
    <td>Ruby variable (constant from Syslog::Constants)</td>
    <td>Syslog as this syslog facility</td>
    <td><tt>Syslog::LOG_DAEMON</tt></td>
  </tr>
  <tr>
    <td><tt>['chef_client']['handler']['syslog']['fail_priority']</tt></td>
    <td>Ruby variable (constant from Syslog::Constants)</td>
    <td>Syslog as this priority on Chef run failure</td>
    <td><tt>Syslog::LOG_ERR</tt></td>
  </tr>
  <tr>
    <td><tt>['chef_client']['handler']['syslog']['success_priority']</tt></td>
    <td>Ruby variable (constant from Syslog::Constants)</td>
    <td>Syslog as this priority on Chef run success</td>
    <td><tt>Syslog::LOG_INFO</tt></td>
  </tr>
</table>

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

Copyright (c) 2013 Charles J Blaine

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
