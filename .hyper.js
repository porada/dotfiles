module.exports = {
  config: {
    // UI
    fontSize: 15,
    fontFamily: 'SF Mono, monospace',
    hyperStatusLine: {
      dirtyColor: 'yellow',
      footerTransparent: false
    },

    // Shell
    env: {}
  },

  plugins: [
    'hyper-hide-title',
    'hyper-snazzy',
    'hyper-statusline',
    'hypercwd'
  ]
};
