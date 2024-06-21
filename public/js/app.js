// Función para cambiar el color de fondo
function changeBackgroundColor() {
  const colors = [
    "bg-red-500",
    "bg-green-500",
    "bg-blue-500",
    "bg-yellow-500",
    "bg-purple-500",
  ];
  const currentColor = document.body.classList[0];
  let newColor;
  do {
    newColor = colors[Math.floor(Math.random() * colors.length)];
  } while (newColor === currentColor);
  document.body.className =
    newColor + " text-gray-900 flex items-center justify-center min-h-screen";
}

// Cambiar el color de fondo cuando se hace clic en el botón
document
  .getElementById("colorButton")
  .addEventListener("click", changeBackgroundColor);

// Cambiar el color de fondo cada 5 segundos automáticamente
setInterval(changeBackgroundColor, 5000);
