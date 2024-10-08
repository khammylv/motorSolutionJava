/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/ClientSide/javascript.js to edit this template
 */

window.onload = function () {
    const timeout = 1000;

    // Obtener los parámetros de la URL
    const urlParams = new URLSearchParams(window.location.search);

    // Comprobar si existe el parámetro 'error' en la URL
    const errorParam = urlParams.get('error');
    const successParam = urlParams.get('success');
    var launchButton = document.getElementById('launchButton');
    if (urlParams.has('error') || urlParams.has('success')) {
        launchButton.disabled = true;
        setTimeout(function () {
          window.location.href = "UserServlet"; // Redirigir a la página principal
        }, timeout);
    }

};
