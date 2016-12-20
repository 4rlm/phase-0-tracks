# 3.2 Mandatory Pairing: Link Tags and Selectors

### Links:
1. Lesson: https://devbootcamp.instructure.com/courses/136/assignments/7397?module_item_id=38135

2. The Child Selector: http://meyerweb.com/eric/articles/webrev/200006b.html

        * Example 1: `body > p {color: green;}`

        * Example 2: `body > div > div > p {color: lime; background: cyan;}`

        * Example 3: `div ol > li em {color: purple;}`

3. Child and Sibling Selectors: https://css-tricks.com/child-and-sibling-selectors/
        * Example:
                    `ul li { margin: 0 0 5px 0; }`
                            vs
                    `ul > li { margin: 0 0 5px 0; }`

4. CSS3 :nth-child() Selector: http://www.w3schools.com/cssref/sel_nth-child.asp

        * Syntax: `:nth-child(number) {css declarations;}`

        * Example 1: `p:nth-child(2) {background: red;}`

        * Example 2: `p:nth-child(odd) {background: red;}`

        * Example 3: `p:nth-child(even) {background: blue;}`

        * Example 4: `p:nth-child(3n+0) {background: red;}`
