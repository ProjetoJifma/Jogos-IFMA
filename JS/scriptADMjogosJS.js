// script.js
let games = JSON.parse(localStorage.getItem('games')) || [];
let editIndex = null;

// Carregar dados se estiver editando
document.addEventListener('DOMContentLoaded', () => {
    const urlParams = new URLSearchParams(window.location.search);
    const id = urlParams.get('id');

    if (id !== null && games[id]) {
        editIndex = id;
        document.getElementById('form-title').textContent = 'Alterar Resultado';
        document.getElementById('teams').value = games[id].teams;
        document.getElementById('date').value = games[id].date;
        document.getElementById('result').value = games[id].result;
        document.getElementById('submit-btn').textContent = 'Atualizar Resultado';
    }
});

// Processar formulário
document.getElementById('game-form').addEventListener('submit', (e) => {
    e.preventDefault();

    const teams = document.getElementById('teams').value;
    const date = document.getElementById('date').value;
    const result = document.getElementById('result').value;

    if (editIndex !== null) {
        games[editIndex] = { teams, date, result };
    } else {
        games.push({ teams, date, result });
    }

    localStorage.setItem('games', JSON.stringify(games));
    window.location.href = 'testepaginajogos.php'; // Redireciona para a tabela
});

// Link para voltar
document.getElementById('back-link').addEventListener('click', () => {
    window.location.href = 'testepaginajogos.php';
});