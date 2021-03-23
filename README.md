# Boris Bikes Challenge 🚴 #
*Makers Academy - Week 1 Challenge*

<p>&nbsp;</p>

* ## **Brief:**
"Transport for London, the body responsible for delivery of a new bike system, come to you with a plan: a network of docking stations and bikes that anyone can use. They want you to build a program that will emulate all the docking stations, bikes, and infrastructure (repair staff, and so on) required to make their dream a reality."

<p>&nbsp;</p>

* ### Read **User Stories** that support the program [here](https://github.com/margmartelo/BorisBikes/blob/main/UserStories.md).

<p>&nbsp;</p>

* ### See **Diagrams** that structure planning [here](https://github.com/margmartelo/BorisBikes/blob/main/Diagrams.md).

<p>&nbsp;</p>

* ## **Tech used:**
This project is being written in Ruby.
Testing is being run by RSpec - examples, failures.

<p>&nbsp;</p>

* ## **How to run the app:**
```bash
$ git clone git@github.com:margmartelo/BorisBikes.git
$ cd BorisBikes
$ gem install rspec
$ bundle install
$ irb
```

<p>&nbsp;</p>

* **To load the docking station:**
```bash
$ require './lib/docking_station.rb'
```

<p>&nbsp;</p>

* **To create a new instance of docking station class:**(with zero bikes docked and capacity of 20 bikes):
```bash
$ station = DockingStation.new
```

<p>&nbsp;</p>

* **To dock a bike:**
```bash
$ station.dock(Bike.new)
```
By default, Bike.new will create a working bike.

<p>&nbsp;</p>

* **To release a bike:**(assuming there are bikes available; otherwise it will raise an error)
```bash
$ station.release_bike
```
<p>&nbsp;</p>

* ## 🚴 **How to run the tests:**
```bash
$ rspec
```
<p>&nbsp;</p>

