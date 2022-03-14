<h1>Keystroke</h1>

```applescript
on run {input, parameters}
	tell application "System Events" to keystroke (the clipboard as text)
	return input
end run
```
