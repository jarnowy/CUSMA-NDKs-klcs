; disable capslock and make it dual key Ctrl-Escape depending on the pressing duration
CapsLock::
KeyWait, CapsLock, T.17 ; wait for .17 seconds to release
if ErrorLevel ; ErrorLevel sent is when time limit is reached, thus, CapLocks is still hold
{
    CapsLock::Ctrl
}
else
{
    Send {Blind}{Escape}
}
return