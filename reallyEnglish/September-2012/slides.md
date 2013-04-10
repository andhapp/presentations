!SLIDE title-slide
.notes The topic

# DTrace + <span class="ruby">Ruby</span> #

Developer week @ Reallyenglish 

September 2012


!SLIDE title-slide
.notes I've met Matz. But I could be lying as I have no pictures.

# I've met Matz #
<img src="anuj_with_matz.jpeg" width="180px" height="180px"></img>


!SLIDE title-slide
.notes Matz is a C programmer and this is about Ruby not C.

# But, he's a C programmer #


!SLIDE title-slide
.notes What is Dtrace? It's a dynamic instrumentation framework.

# Dynamic instrumentation framework #


!SLIDE incremental
.notes WTF does that mean?

.smallImage ![wtf](wtf.jpeg)


!SLIDE title-slide
.notes It's a framework to debug your system and that could be anything
from CPU usage to IO usage to memory usage. It's passive by default so
if you don't enable the probe it will just be sitting in the kernel or
provider library without any problems. Something that helps you profile
your system. Programmers spend a lot of time debugging things, and
something like this can help.
# Debugging #


!SLIDE title-slide
.notes First released in 2005.

# 2005 #


!SLIDE title-slide
.notes It was created for Sun OS.

# Sun OS #


!SLIDE title-slide 
.notes But not it's been added to Mac and FreeBSD. Number of probes
available depends on the OS and kernel modules. A probe is a bt of code
snippet that executes when certain condition is met.

# Mac OSX and FreeBSD #


!SLIDE slide code
.notes This counts the number of system calls from Mozilla Firefox.
syscall is the name of the provider that manages probes at entry and
return points. Here we are only interested in entry points. In the
predicate section bounded by / /, we explicity set a condition to only
match calls by firefox. The code in { } defines the action to take.
Here, we are using a DTrace system variable called probefunc along with
count() function to aggregate the number of calls.

# System calls by Firefox #

<pre>
dtrace -n 'syscall:::entry /execname == "firefox-bin"/ 
{ @[probefunc] = count() }' 
</pre>



!SLIDE
.notes D is a C like language with similar semantics. 
Consumer is a user mode program that calls underlying DTrace framework. 
Providers manage probes assciated with a particular subsystem, they are libraries for
probe. For exmaple: io, tcp, mysql, perl, ruby and several other. 
Probes are point of instrumentation. 
Predicates are user defined conditional statements. 
Clauses are action to take when the probe fires.

# Terminology #
* D Language
* Consumer (e.g. dtrace on the command line)
* Provider (dtrace -l)
* Probe
* Predicate
* Clause


!SLIDE title-slide 
.notes We love ruby. I don't care what DTrace does. I mean I'm not going
to sit down and start looking at what firefox is doing. 

# Enough DTrace! #
# <span class="ruby">We &#x2764; Ruby</span> #


!SLIDE title-slide 
.notes Rails added ActiveSupport::Notifications which is similar to what
DTrace does and one can subscribe to these events. It's simiar but not
same as DTrace. For example: factory_girl has
added a custom notification and one can subscribe to it in their code to
see if any factory is slow or not. 

# ActiveSupport::Notifications #


!SLIDE title-slide 
.notes How can I set probes for my ruby code? There are a few ruby
libraries out there to accomplish it. ruby-dtrace is probably the first
one and is not currently maintained. Bindings for libdtrace.

# ruby-dtrace #


!SLIDE title-slide 
.notes Rack middleware that uses ruby-dtrace and creates probe around
various HTTP requests. Over 3 years old and was developed as part of
GoSoc and not really maintained.

# rack-probe #


!SLIDE title-slide 
.notes ruby wrapper for libusdt. libusdt is the library for creating 
Userland Statically Defined Traces for dynamic languages like ruby, perl
and node. ruby-usdt is the ruby wrapper around it.

# ruby-usdt  #


!SLIDE title-slide 
.notes rails-dtrace hooks into activesupport notifications and turn them
into dtrace probes. So, again one can define their own activesupport
notifications and they will be turned into probes.

# rails-dtrace  #


!SLIDE title-slide 
.notes Joyent (creater of node) created patches for it and now
tenderlove has created that into its branch called probes. It hasn't
been merged into trunk yet but hopefully before 2.0. Ruby core has
created its own USDT which will be useful for profiling and debugging
the interpreter and your own code for performance.

# Ruby core? #


!SLIDE incremental
.notes Some examples are.

# Some examples... #

* function-entry
* ruby-array-allocation
* and some around GC 


!SLIDE title-slide
.notes What can we do with it? Add it to our own client gems to make it
wasy to debug and I'd like to try this out with pisces_client gem. I'm
not sure how this is going to work but I'd like to try and see what I
can do.

# Reallyenglish #


!SLIDE incremental
.notes I've only scratched the surface, so please go and explore.

.smallImage ![scratch-surface](scratch-surface.jpg)


!SLIDE incremental
.notes Please explore on your own.

.smallImage ![explore](explore.jpg)


!SLIDE title-slide
.notes Thanks for listening.

# Thanks #


!SLIDE title-slide
.notes Thanks for listening.

# Demo #


!SLIDE title-slide
.notes Questions.

# Questions? #

