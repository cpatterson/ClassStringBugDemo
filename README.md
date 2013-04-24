ClassStringBugDemo
==================

Demonstrates a hanging bug in the Xcode 4.6.2 clang compiler.

When you (stupidly) try to compare a Class object to an NSString literal with the != operator, clang refuses to
finish compiling the offending file and hangs, appearing to take forever to compile the file.

Clang should report some kind of "type mismatch" error and move on.

This demo project reproduces the bug. The offending line of code is in the AppDelegate.m file. Otherwise the project
is a stock Apple iOS "Empty" app template.

Radar filed under:
http://openradar.appspot.com/radar?id=2972401
