# CSS Architecture and Standards

This document defines the CSS structure, naming conventions, and best practices used for `ssite` projects. The architecture focuses on modularity, strict variable-based design tokens, and modern CSS features like native nesting.

## Core Principles

- **Entry-Point Driven**: A single `main.css` file orchestrates all imports.
- **Variable-First**: No hardcoded colors or dimensions in component files; use variables.
- **Native Nesting**: Use standard CSS nesting for hierarchy and scoping.
- **Semantic Layers**: Separate variables (color, layout), base styles, common components, and page-specific overrides.

## File Structure

All CSS files reside in the `css/` directory.

- `css/main.css`: The main entry point importing all other files.
- `css/fonts.css`: External font imports (Google Fonts, etc.).
- `css/var-color.css`: Design tokens for the color palette and application mappings.
- `css/var-layout.css`: Variables for dimensions, grids, and layout constants.
- `css/base.css`: Global resets, scrollbar styles, and base element styling.
- `css/page-common.css`: Shared layout components (Header, Footer, Logo, etc.).
- `css/hljs.css`: Syntax highlighting overrides (for `highlight.js`).
- `css/page/page-[name].css`: Styles unique to specific pages.

## Design Tokens (Variables)

Variables must be organized from generic (palette) to specific (application semantic).

### Color Variables (`var-color.css`)

Prefix variables to denote their intent:
- `--clr-`: Generic palette colors (e.g., `--clr-mono-500`, `--clr-prime-500`).
- `--txt-`: Text specific colors (e.g., `--txt-60`, `--txt-link`).
- `--bkg-`: Background colors (e.g., `--bkg-app`, `--bkg-20`).
- `--bdr-`: Border colors.
- `--ico-`: Icon colors.

Example of semantic mapping:
```css
:root {
  /* Generic */
  --clr-mono-800: #424242;
  
  /* Semantic */
  --bkg-60: var(--clr-mono-800);
  --bdr: var(--bkg-60);
}
```

### Layout Variables (`var-layout.css`)

Used for maintaining consistent spacing and page widths.

```css
:root {
  --page-width: 80rem;
  --grid-page: .5rem 1fr .5rem;
}
```

## Modules Detail

### main.css

The orchestrator file. The order of imports is critical (variables must come before usage).

```css
@import './fonts.css';
@import "./var-color.css";
@import "./var-layout.css";
@import "./base.css";
@import "./page-common.css";
@import "./hljs.css";

/* Page specific */
@import "./page/page-index.css";
```

### fonts.css

Include standard bases like Lato and Roboto for versatility.

```css
@import url('https://fonts.googleapis.com/css2?family=Lato:wght@100;300;400;700;900&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Source+Code+Pro:wght@400;600&display=swap');
```

### Nesting Conventions

Use native CSS nesting to group related styles and media queries.

```css
header {
  height: 4rem;
  display: grid;

  section {
    display: grid;
    align-items: center;

    h1 {
      font-size: 2rem;
    }

    @media only screen and (max-width: 600px) {
      h1 {
        font-size: 1.5rem;
      }
    }
  }
}
```

### Base Styles (`base.css`)

Focus on normalization and global defaults. Ensure `box-sizing: border-box` is applied to all elements.

```css
* {
  box-sizing: border-box;
  min-width: 0;
  min-height: 0;
  margin: 0;
  padding: 0;
}

body {
  font-family: 'Lato', sans-serif;
  line-height: 1.4;
  color: var(--txt);
  background: var(--bkg-app);
}
```
