# Practice Problems: The Box Model


## Problem 1
For `<img>`, the box sizing model `content-box` indicates that the specified `width` and `height` properties are only concerned with the content area width. Padding, border, and margin must be added to compute actual occupied width and height.

Width = 578px
- 500px content
- 2 * 20px padding
- 2 * 4px border
- 19px right margin
- 11px left margin

Height = 358px
- 300px content
- 2 * 10px padding
- 2 * 4px border
- 20px top margin
- 10px bottom margin

For `<div>`, `box-sizing: border-box` indicates that any specified `width` and `height` include content area, padding, and border.
- The content area is comprised of one child element, `<img>`, which occupies 578px width and 358px height.
- The `<div>` border adds 2 * 1px border to both dimensions, for a final width of 580px and final height of 360px. Therefore these are the minimum `width` and `height` properties.
- The box sizing model does not consider margin.


## Problem 2
The difference between this problem and the previous is that the `section` element has a `display` property with value `block` instead of `inline-block`. This means that `section` will be the only element on its line. The min width and height for `div` is the same as for Problem 1.


## Problem 3
`em` is an `inline` element, so its box size is computed differently from `block` and `inline-block`.
Width = 80 + ???px
- IGNORE width
  - ???px content width (the word "content")
- 2 * 20px left and right padding
- 2 * 4px border
- 19px right margin
- 11px left margin
- 2 * 1px `div` border

Height = 30 + ???px
- IGNORE height
  - ???px content height (the word "content")
- 2 * 10px top and bottom padding
- 2 * 4px border
- IGNORE top and bottom margins
- 2 * 1px `div` border

Top and bottom padding and borders may overlap with content above and below.


## Problem 4
`article` has a `box-sizing` property with value `border-box`. This means that the specified `width` of `500px` and `height` of `300px` are inclusive of padding and border. It also has a property `display` with value `inline-block` which means that none of the margins are ignored.

Width = 532px
- 500px content + padding + border
- 19px right margin
- 11px left margin
- 2 * 1px `div` border

Height = 332px
- 300px content + padding + border
- 20px top margin
- 10px bottom margin
- 2 * 1px `div` border


## Problem 5
The `div` element has a `box-sizing` property with value `content-box`, meaning that the entire specified `width` of `720px` is available for the two `tag*` elements.

### Scenarios
1. Both elements are `block` elements.
   
   `block` elements stack vertically on top of each other, so this would not cause the elements to display side-by-side.

2. Both elements are `inline` elements.
   
   `inline` elements will display side-by-side.

3. Both elements are `inline-block` elements.
   
   `inline` elements will display side-by-side.

4. One element is a `block` element, and one is an `inline` element.

   The `block` element will always occupy its own line, so the elements will not display side-by-side.

5. One element is a `block` element, and one is an `inline-block` element.

   The `block` element will always occupy its own line, so the elements will not display side-by-side.

6. One element is an `inline` element, and one is an `inline-block` element.

   Both `inline` and `inline-block` elements will display side-by-side.


## Problem 6
`article` elements are `block` elements by default. They can be converted to `inline-block` elements by specifying `display: inline-block`, so they display side-by-side.

The `article` elements have specified `width` of `50%`. The parent element `section` has width 900px, so the `article` element each have width 450px. The `article` element have `height` of `100%`, which is 400px from the parent element.

The `article` elements have the default `box-sizing` value of `content-box`. This means their actual width and height are:

Width = 472px
- 450px width
- 2 * 10px left and right padding
- 0px margin
- 2 * 1px border

Height = 422px
- 400px height
- 2 * 10px top and bottom padding
- 0px margin
- 2 * 1px border

To make the `article` elements display side-by-side, we need to change the `display` property to `border-box` so that the specified height and width includes both padding and margin. The total width of the two boxes would be 900px, and the height would be 400px. The boxes would then fit side-by-side in their parent element.


## Problem 7
