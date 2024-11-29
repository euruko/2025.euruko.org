/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./*.{html,js}"],
  theme: {
    extend: {
      colors: {
        'euruko-purple': '#1E0B33',
        'euruko-accent': '#FF7F50',
        'euruko-primary': '#E31C2D',
        'euruko-dots': '#6B46C1'
      },
      backgroundImage: {
        'dots-pattern': 'radial-gradient(circle, #6B46C1 1px, transparent 1px)',
      }
    },
  },
  plugins: [],
}
