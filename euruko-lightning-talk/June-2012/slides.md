!SLIDE title-slide
.notes The topic

# DTrace #

Anuj Dutta

Lightning Talk @ Euruko 2012


!SLIDE title-slide 
.notes Introduction

# Anuj Dutta (@andhapp) #


!SLIDE title-slide 
.notes Introduction

# Ruby and Rails Freelancer #


!SLIDE title-slide 
.notes It's a dnamic instrumentation framework

# Dynamic instrumentation framework #


!SLIDE title-slide 
.notes Like activesupport notifications on steroids. They are the same
sort of concept.

# ActiveSupport::Notifications #


!SLIDE title-slide 
.notes It was originally developed for Solaris and Open Solaris.

# Solaris and Open Solaris #


!SLIDE title-slide 
.notes But not it's been added to Mac and FreeBSD. Number of probes
available depends on the OS and kernel modules.

# Mac OS X and FreeBSD #


!SLIDE title-slide 
.notes Why should I care about DTrace? Why not use a plethora of other
tools like top, ps, vmstat(1), iostat(1) and different debuggers for
various languages? Because DTrace is one tool that gives you a complete
view across OS and application stack.

# Why DTrace? #


!SLIDE slide incremental
.notes What is the presentation about.

# Why DTrace? #

* No effect on system performance
* High level control language, called D
* Profile across user and kernel modes
* and many more...


!SLIDE slide incremental
.notes D is a C like language with similar semantics. Consumer is a user
mode program that calls underlying DTrace framework. Providers manage
probes assciated with a particular subsystem, they are libraries for
probe. For exmaple: io, tcp, mysql, perl, ruby and several other. Probes
are point of instrumentation. Predicates are user defined conditional
statements. Clauses are action to take when the probe fires.

# Terminology #
* D Language
* Consumer (e.g. dtrace on the command line)
* Provider (dtrace -l)
* Probe
* Predicate
* Clause


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


!SLIDE title-slide

# Will be in Ruby 2.0 #


!SLIDE slide
.notes I've only scratched the surface, so please go and explore.

![scratch-surface](scratch-surface.jpg)

Scratched the surface


!SLIDE slide
.notes Please explore on your own.

![explore](explore.jpg)

Explore on your own from here

[DTrace book](http://www.amazon.co.uk/DTrace-Dynamic-Tracing-Solaris-FreeBSD/dp/0132091518)

[DTrace tools website](http://www.brendangregg.com/dtrace.html)


!SLIDE title-slide
.notes Thanks for listening.

# Dank u wel #
