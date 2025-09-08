function abrirModalPagamento() {
    document.getElementById('modalPagamento').style.display = 'block';
}

function fecharModalPagamento() {
    document.getElementById('modalPagamento').style.display = 'none';
}
window.onclick = function(event) {
    if (event.target == document.getElementById('modalPagamento')) fecharModalPagamento();
}

function atualizaValor() {
    const planoSelect = document.getElementById('plano');
    const valorInput = document.getElementById('valor_pago');
    const selectedOption = planoSelect.options[planoSelect.selectedIndex];
    const valor = selectedOption.getAttribute('data-valor');
    valorInput.value = valor;
}