window.addEventListener('message', function(event) {
    if (event.data.type === "updateTextUI") {
        updateTextUI(event.data.key, event.data.title, event.data.action);
    } else if (event.data.type === "hideTextUI") {
        hideTextUI();
    }
});

function updateTextUI(key, title, action) {
    document.querySelector('.key').textContent = key;
    document.querySelector('.title').textContent = title;
    document.querySelector('.action').textContent = action;
    document.getElementById('textui').style.display = 'flex';
}

function hideTextUI() {
    document.getElementById('textui').style.display = 'none';
}
