!SLIDE title-slide
.notes The topic

# Creating a Gem #


!SLIDE slide bullets incremental
.notes Introduction

# Who am I? #

* Anuj Dutta (@andhapp)
* Ruby and Rails Freelancer
* Currently working at BBC
* www.andhapp.com


!SLIDE slide bullets incremental transition=fade
.notes What is the presentation about.

# What will I talk about? #

* What is RubyGems?
* Why do I need to create a Gem?
* How can I create one?


!SLIDE title-slide transition=fade
.notes The topic

# What is RubyGems?#


!SLIDE midSizeList slide bullets incremental transition=fade
.notes What are they? Standardised packaging framework. Comes bundled with Ruby 1.9. My first issues with Java was downloading the jar files and there
was no one place where you could download them from. Not sure what the state of afiars is now but it was a huge pain. But with Ruby it was easier and 
bearable. Recently, the RubyGems server had a big revamp and has been replaced by GemCutter which is a far better looking solution. SO, its all looking 
very bright for rubygems. Similar idea has been used in Node with something called Node Package Manager. EasyInstall in Python.

# Some Facts #

* Standardized packaging and installation framework for Ruby libraries and applications.
* Makes it easy to locate, install, upgrade, and uninstall Ruby packages.
* Gems hosted at http://rubygems.org
* Previously known as Gemcutter
* Guides: http://docs.rubygems.org/
* Currently at version 1.6.2


!SLIDE title-slide transition=fade
.notes The topic

# Why should I create one? #


!SLIDE slide bullets incremental transition=fade
.notes Why to create one? The best way to learn is by doing and by writing your own gems you can learn more about how rubygems work and how one can
use it for their own benefit. When you release your code in the wild you are inviting people to criticise your code and help you improve your coding 
and it's absolutely free of cost. It helps you become a better developer. Reuse the code you have in other applications so that you change it once 
and it gets updated in multiple places at once by just updating the gem. And end of the day it's just fun. I usually go through people's gems to see
how they have achieved certain thing and what's the newest tool or lib that one should be using. Gem's are everywhere. This presentation was created 
using one. There is one to create new gems. There is one for gem management.

# Some Reasons #
* Because you want to learn
* Don't be mean! Share your code
* DRY or Reusability
* It's FUN
* and it's very very EASY


!SLIDE title-slide transition=fade
.notes The topic

# How to create one? #


!SLIDE slide bullets incremental transition=fade
.notes How to create one?

# Naming #
.notes This is the most important part of the presentaion, I guess - How can I create a gem? There are several ways to create a gem. Like with every other
piece of software, you could start with what you have in mind and start building it. Or, you wrote a piece of code in the past, that you now need for another
project and it's the best time to actually make it into a gem. Naming is probably the hardest part of creating a gem. Some of the gem names have no relation
to its functionalities what so ever and also it is essential to make sure the name is not taken already by someone else otherwise you will have all sorts of 
naming conflicts when you want to push it to Rubygems server. This follows a defined suit of how thing flows.

* One word? vcr
* Two or more words? fancy_require
* Extension to an existing gem? net-http-extension
* Recommended by Eric Hodel
* And it's a standard ruby way of naming gem files.


!SLIDE slide bullets incremental transition=fade
.notes Tools

# Tools #
* Several Gems that automate the gem creation.
* jeweler, newgem, bones, echoe, hoe, simple_gem and inochi


!SLIDE structure slide bullets incremental transition=fade
.notes Every gem has the same structure that makes it easier for ruby to go and find the required files. 

# Structure #

<h2>example_gem</h2>

<p>
|- LICENSE.txt<br>
|- README.rdoc<br>
|- Rakefile<br>
|- lib/ <br>
    <p style="padding-left: 60px;">
      |- example_gem.rb <br>
      |- example_gem/ <br>
    </p>
      <p style="padding-left: 120px;">
        |- core.rb <br>
      </p>
<p>
|- spec/ (or test/) <br>
</p>
    <p style="padding-left: 60px;">
      |- spec_helper.rb<br>
      |- example_gem/ <br>
    </p>
      <p style="padding-left: 120px;">
        |- core_spec.rb<br>
      </p>
</p>


!SLIDE slide bullets incremental transition=fade
.notes For this presentation, we will look at a gem that adds an external method to ruby array's method

# array_extension #

* Converts [1,2] => {1=>1, 2=>2}


!SLIDE slide bullets incremental transition=fade
.notes Versioning

# Version #

* &lt;major&gt;.&lt;minor&gt;.&lt;patch&gt;

* 0.1.0


!SLIDE slide bullets incremental transition=fade
.notes Versioning

# Rake commands #

* rake version:write
* rake version:bump:major
* rake gemspec
* rake gemcutter:release

!SLIDE slide bullets incremental transition=fade
.notes Sharing and distribution?

# Sharing and Distribution #

* Create an account at rubygems.org
* Create a ~/.gem/credentials file with your api key


!SLIDE slide bullets incremental transition=fade
.notes Sharing and distribution...contd?

# Sharing and Distribution...contd #

<pre style="padding-left:50px;">
---
:rubygems_api_key: &lt;your api key&gt;
</pre>


!SLIDE slide bullets incremental transition=fade
.notes Manage Gem on your machine?

# Gem Management #

* bundler
* braid
* piston
* giternal
* isolate


!SLIDE slide bullets incremental transition=fade
.notes recap

# Recap #

* What is RubyGems?
* Why?
* How?


!SLIDE slide bullets incremental transition=fade
.notes Question Time?

# Questions? #


!SLIDE slide bullets incremental transition=fade
.notes Question Time?

# Thanks #

