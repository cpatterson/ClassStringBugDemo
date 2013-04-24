ClassStringBugDemo
==================

Demonstrates a hanging bug in the Xcode 4.6.2 clang compiler.

When you (stupidly) try to compare a Class object to an NSString literal with the != operator, clang refuses to
finish compiling the offending file and hangs, appearing to take forever to compile the file.

Clang should report some kind of "type mismatch" error and move on.