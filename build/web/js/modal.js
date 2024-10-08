/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/ClientSide/javascript.js to edit this template
 */

function fillEditModal(idUserCC, name, email, birth, rol) {
    
    document.getElementById('modalIdUserCC').value = idUserCC;
    document.getElementById('modalName').value = name;
    document.getElementById('modalEmail').value = email;
    document.getElementById('modalBirth').value = birth;
    document.getElementById('modalRol').value = rol;
}
document.addEventListener('DOMContentLoaded', function () {
    var deleteButtons = document.querySelectorAll('.delete-btn');
    
    deleteButtons.forEach(function (button) {
        button.addEventListener('click', function () {
            var userId = button.getAttribute('data-user-id');
            
            document.getElementById('idUserCC').value = userId;
        });
    });
});
