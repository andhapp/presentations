# DTrace

DTrace has provider. 

Provider is of format: module::function::name.

Consumer consumes libdtrace. dtrace is one. 



## USDT

User level statically defined tracing

### Ruby

Ruby had it's own version of USDT, contributed by Joyent. Then it was
taken out and added again by Aaron Patterson and should be part of Ruby
2.0. This is good for creating probes meaningful to the interpreter and
not to the ruby application.

#### Libraries

libdtrace - DTrace dynamic tracing software library. Functions in this library define the interface for interact-ing  with the DTrace dynamic tracing software, including the D language compiler and facilities for enabling  probes  and consuming trace data.

ruby-dtrace - Ruby-DTrace is Ruby bindings for Dtrace, which allows you to add
DTrace probes to your Ruby programs, and to write D-based programs
with Ruby.

Last commit 2 years ago and is not up-to-date.

libusdt - An extraction into a C library of the common parts of ruby-dtrace[1], perl-dtrace[2] and node-dtrace-provider[3].
The idea here is to allow the specification of a DTrace provider dynamically in code and then create the provider at runtime. This allows providers to be specified in dynamic languages, given suitable bindings.

Rack::Probe uses ruby-dtrace.

ruby-usdt

rails-dtrace


https://blogs.oracle.com/ahl/entry/user_land_tracing_gets_better
http://www.ibm.com/developerworks/aix/library/au-dtraceprobes.html
http://api.rubyonrails.org/classes/ActiveSupport/Notifications.html


* Intro to Dtrace

* History

* Usefulness (Finding the number of calls made)

* Syntax

* What does it mean for Ruby?

* USDT

* ruby-dtrace, libusdt, ruby-usdt

* Rack::Probe

* What does it mean for Rails?

* ActiveSupport::Notifications

* Use cases for ruby outside rails   
 
* In CanCan

* In pisces_client

* 
