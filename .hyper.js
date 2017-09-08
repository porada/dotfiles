module.exports = {
  config: {
    // UI
    fontSize: 15,
    fontFamily: 'SF Mono, monospace',
    termCSS: `
      :root {
        letter-spacing: -0.2px;
      }
    `,
    hyperStatusLine: {
      footerTransparent: false
    }
  },

  plugins: [
    'hyper-hide-title',
    'hyper-snazzy',
    'hyper-statusline',
    'hypercwd'
  ]
};
