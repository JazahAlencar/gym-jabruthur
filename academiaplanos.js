function abrirModal(id, nomePlano) {
    document.getElementById("modalMatricula").style.display = "block";
    document.getElementById("plano").value = id;
}

function fecharModal() {
    document.getElementById("modalMatricula").style.display = "none";
}

window.onclick = function(event) {
    const modal = document.getElementById("modalMatricula");
    if (event.target === modal) {
        fecharModal();
    }
}