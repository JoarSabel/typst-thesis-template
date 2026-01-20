# Typst Thesis Template

Good choice! 

The template includes some examples of plugin uses, how to use figures and other things that might be useful to you when writing a thesis. If there's something you need that isn't included here, you can check the [docs](https://typst.app/docs/) or the forums, usually someone has had a similar thought.

## Commands

To watch (re-compile on write) and open the resulting pdf, use:

```
typst w mastersThesisTemplate.typ --open
```

To compile the main file, and subsequent included files (e.g. chapters)

```
typst c mastersThesisTemplate.typ <optional_ouput_filename.pdf>
```

To compile according to accessibility standard:

```
typst c --pdf-standard a-2b mastersThesisTemplate.typ
```

To compile only a handful of pages:

```
typst c mastersThesisTemplate.typ --pages '1,10-20,29-33'
```

More info always available in the [docs](https://typst.app/docs/).

