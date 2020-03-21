## get-nmap-script-info
Takes a query parameter as an argument and looks for nmap script information.

For more information on NSE scripts, see the [official nmap documentation](https://nmap.org/nsedoc).

#### Getting started
Type 

    bash get-nmap-script-info.sh YOUR_QUERY

for a query *YOUR_QUERY*. For the given query, the script returns 
- names of related nmap scripts
- information on their use

Typically, you may either want to look for scripts related to a specific protocol or vulnerability (e.g. snmp, dns, CVE-2009-3960, ...)
in which case you would run *bash get-nmap-script-info.sh snmp*.

Else, you might query specific information on a script you already know and are not sure how to use
properly. Then you would run something like *bash get-nmap-script-info.sh dns-brute*.
