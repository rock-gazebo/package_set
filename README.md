# rock.gazebo

The autoproj package set that defines all that is needed to run Gazebo on Rock

While the package set does define a source package for gazebo, it's really hard
to keep it up to date, given how quickly gazebo itself evolves. The recommended
method of installation is to use OSRF's APT packages listed [on the Gazebo
website](http://gazebosim.org).

The package set currently selects **Gazebo 8**, which requires the APT source above.

You can override this choice in your own build configuration by adding an
`autoproj/overrides.d/gazebo-default.osdeps` file. You will need to pick the
corresponding sdformat version at the same time, e.g.

```
gazebo:
  osdep: gazebo7 # or gazebo8, …
sdformat:
  osdep: sdformat4 # or sdformat5, …
```


