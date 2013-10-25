## HTML
HTML stands for HyperText Markup Language. It is comprised of tags (also called elements) which enclose different parts of a webpage's context. For example, we've seen the `<div>` tag in our rails views. Web browsers read HTML and render visible web pages. When we user hits a Rails application, they never get Ruby code back. The Rails server figures out what to render in HTML, which is what the user always sees. HTML elements are necessary for all websites. 

### Basic HTML Lesson Overview
- Viewing Source
- Doctype
- HTML Tag
- Head Tag
- Title
- Meta Tags (attributes and values, self-closing tags, charset)
- Body Tag
- Div 
- Margin (auto)
- Ids and Classes
- Span
- Children, Parents, Ancestors, Descendants, and Siblings (including Indentation)
- Relative and absolute positioning
- HTML in a Rails View

### Elements
- Headings (SEO, Importance)
- Blockquotes
- Anchor tags (links: relative, absolute)
- UL and LI Tags
- Images
- Lists and iterators in a Rails view

### Forms
- Necessary HTML 
- Parameters

### Admin
- Folders (css, img folders)
- Accessibility
- Screen Resolutions

### Extras
- Google Fonts
- CSS Frameworks 
- Grid Systems

## CSS
CSS, or Cascading Style Sheets, is a language used for the look and formatting of a web page. Although styling originally was done in HTML, CSS was created to separate the styling and the content of webpages. Particularly for large applications, CSS management can become pretty burdensome. We'll look at tools and techniques for CSS later in the class. 

### Basic CSS Overview
- Style Tags
- Referencing stylesheets
- Color (hex, names, RGB)
- Fonts 
- Borders
- Floating, clearing, and overflow
- Height/Width (fixed versus percentage, min-widths)
- Display (inline, block, inline-block)
- Backgrounds (urls)
- Resetting and Normalizing CSS

## Accessibility
Accessibility intro related to the goals of accessiblity, HTML components, and style-related issues like color contrast and font size/weight

### Intro to accessibility (a11y)
- Introduction to concepts of no vision, no hearing, no mouse/touch, and their various overlaps
- Introduction to WCAG 2.0 guidelines and various related W3C documentation
- Summary of how good semantic HTML and general best practices are 80% of the battle

### HTML element and ARIA concepts
- Demo of VoiceOver screen reader reading HTML output on OSX and iOS
- Introduction, examples, and VO demonstration of basic ARIA role attributes
- Brief overview of ARIA attributes related to dynamic content that can be manipulated with javascript (live regions, alerts, etc.)

### CSS-related a11y concepts
- Testing color contrast and font sizes/weights for low-sighted and colorblind users
- CSS for hiding/displaying content and how it affects screen readers

### Resources
- http://dpersing.github.io/svc/ (Devon's front-end class)
- http://html5doctor.com/
- http://www.w3.org/TR/WCAG20/
