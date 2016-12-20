# 3.3 CSS Positioning
Lesson: https://devbootcamp.instructure.com/courses/136/assignments/7398?module_item_id=38136
Resource: http://www.w3schools.com/css/css_positioning.asp

<!-- html -->
```
<div class="cheeseburger-wrapper">
  <div id="patty">patty</div>
  <div id="top-of-bun" class="bun">bun (top half)</div>
  <div id="bottom-of-bun" class="bun">bun (bottom half)</div>
  <div id="lettuce">lettuce</div>
  <div id="cheese">cheese</div>
  <div id="tomato">tomato</div>
</div>
```

<!-- CSS -->
```
.cheeseburger-wrapper {
  position: relative;
}

.bun {
  text-shadow: 1px 1px 2px white;
  color: #ffcc00;
}

#top-of-bun {
  position: absolute;
  top: 0px;
  left: 15px;
}

#lettuce {
  position: absolute;
  top: 20px;
  left: 32px;
  color: green;
}

#cheese {
  text-shadow: 1px 1px 2px black;
  position: absolute;
  top: 60px;
  left: 33px;
  color: #ffff99;
}

#tomato {
  position: absolute;
  top: 40px;
  left: 33px;
  color: red;
}

#patty {
  position: absolute;
  top: 80px;
  left: 40px;
  color: brown;
}

#bottom-of-bun {
  position: absolute;
  top: 100px;
}
```
## Release 0: Research on Your Own

1. What is fixed positioning? When would you use it?
* Fixed positioning via `position: fixed;` means the selected content will remain in a fixed position relative to the viewport.  This is often used for main navigation menu bars or for asides, but can be applied to anything.

2. What are relative and absolute positioning?
* Relative positioning via `position: relative;` positions the selected content relative to its inherent positioning.
* Absolute positioning via `position: absolute;` positions the selected content relative to its nearest ancestor, unless it does not have an ancestor.  In which case, it would be positioned relative to the html document.

3. What is a z-index? When might that come in handy?
* z-index is used for ranking hierarchy in overlapping content.  For example, if two blocks of content are taking the position, say "Block A" and "Block B", we could assign Block A a z-index of 10 and assign Block B a z-index of 5, so that Block A will cover Block B for the overlapping parts.

There are 4 positioning options (static is default, so doesn't need to be explicitly written in the css.):
`position: static;`
`position: relative;`
`position: fixed;`
`position: absolute;`


## Release 1: Dress the Octopus
1. In phase-0-tracks/css/positioning, you'll find three images: an octopus, its hat, and its glasses. Create an HTML page and a CSS stylesheet in that same folder.

2. Include the CSS stylesheet and the three images (as img tags without inline styles) on the HTML page.

3. Use margins to center the octopus horizontally on the page, and to put a little bit of space above its head.

4. Use positioning to put the hat and glasses on the octopus. Looking sharp!

5. Submit the GitHub URL to your CSS file to complete this challenge.
