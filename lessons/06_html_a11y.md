# ADA Accessibility Intro

## Intro to a11y concepts

### Major use cases

* Vision (blindness, low vision, color blindness)
* Hearing (deafness)
* Motor skills (inability to use a mouse)
* Cognitive and learning issues (autism, dyslexia, ADD, etc.)

### These issues map loosely to using

* Screen readers and braille readers
* Captions for video and other visual media
* Keyboard-only navigation, or navigation with a joystick or other simplified interface
* Users will sometimes use some overlap of these three methods

### Why be accessible?

* It's easier than it sounds.
* The population of people using the web is aging, lots of people have vision issues.
* The web is an equalizing force in people's ability to get things done.
* Accessible websites typically mean SEO-friendly websites, and websites that work well on mobile and tablet devices.

## How to be accessible

* Introduction to WCAG 2.0 documentation.
* How to test for accessibility:
	* Using Web Inspector to look for HTML element attributes, colors, hover/focus states for interactive elements.
	* Screen reader and keyboard-only navigation testing of a sample page with VoiceOver.
	* Color contrast testing demo with online tools.
	* Using the Chrome a11y plugin with Web Inspector to run high-level automated audits.

### HTML elements and ARIA attributes

* Overview of using web standards as a baseline (if it looks like a link, acts like a link, etc.).
* Introduction to WAI-ARIA and its objectives as a way to enhance HTML output.
* Examples of major ARIA roles to enhance HTML: widget, document, and landmark roles (http://www.w3.org/TR/wai-aria/roles).
* Demo of how adding ARIA roles to a test page changes screen reader output.

### CSS and styles for a11y

* Testing and changing colors for adequate contrast of text or icons against backgrounds in CSS.
* Testing and changing hover/focus states in CSS.

## Resources

* Links to testing resources
* Links to wCAG 2.0 technical documentation for elements and interactions (for later use when JS gets added in)

## Exercises

* Test your current projects with front-end components using VoiceOver and the a11y plugin
* If needed, update your color contrasts. Use http://leaverou.github.io/contrast-ratio/ to increment or decrement your current color contrast until you find an accessible alternative.
* If needed, update your HTML output to use appropriate elements.
* Add ARIA roles to elements.
* Rerun tests.
