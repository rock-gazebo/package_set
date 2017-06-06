# rock.gazebo

The autoproj package set that defines all that is needed to run Gazebo on Rock

While the package set does define a source package for gazebo, it's really hard
to keep it up to date, given how quickly gazebo itself evolves. The recommended
method of installation is to use OSRF's APT packages listed [on the Gazebo
website](http://gazebosim.org).

The package set selects a default Gazebo version (as simulation/gazebo), you can
override it in your own build configuration by adding an
`autoproj/overrides.d/gazebo-default.osdeps` file with e.g.

```
gazebo:
  osdep: gazebo7 # or gazebo8, gazebo9, …
```


