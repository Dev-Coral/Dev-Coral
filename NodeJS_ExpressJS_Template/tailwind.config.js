/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./views/*.{html,js,css,ejs} ",
    "./views/index.ejs",
  ],
  theme: {
    fontFamily: {
    sans: ['Nunito', 'sans-serif'],
    display: ['Nunito', 'sans-serif'],
    body: ['Nunito', 'sans-serif'],
    },
    extend: {},
},
  plugins: [ {
      tailwindcss: {},
      autoprefixer: {},
  }
  ]
}
