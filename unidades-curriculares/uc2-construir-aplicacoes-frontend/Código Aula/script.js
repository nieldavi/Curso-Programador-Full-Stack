// Cada elemento real do HTML fornece a tag que o inspetor deve explicar.
const descricoes = {
  header: 'Cabeçalho: apresenta o título e a introdução da página.',
  nav: 'Navegação: agrupa os links para acessar as áreas da página.',
  main: 'Conteúdo principal: reúne o assunto central da página. Explore também sua borda.',
  section: 'Seção: organiza conteúdos de um mesmo tema e possui um título.',
  article: 'Artigo: conteúdo independente, que pode ser compreendido fora desta página.',
  figure: 'Figura: agrupa uma ilustração, um diagrama ou outro conteúdo com sua legenda.',
  figcaption: 'Legenda: descreve o conteúdo da figura à qual pertence.',
  footer: 'Rodapé: apresenta informações sobre a página ou sua autoria.'
};

const tagAtual = document.querySelector('#tag-atual');
const explicacao = document.querySelector('#explicacao');
let selecionado = null;

function mostrar(elemento) {
  if (elemento === selecionado) return;
  selecionado?.classList.remove('selecionado');
  selecionado = elemento;
  if (!elemento) {
    tagAtual.textContent = '<html>';
    explicacao.textContent = 'Explore a página para conhecer sua estrutura semântica.';
    return;
  }
  elemento.classList.add('selecionado');
  const tag = elemento.dataset.tag;
  tagAtual.textContent = `<${tag}>`;
  explicacao.textContent = descricoes[tag];
}

// closest identifica o elemento mais específico, mesmo em estruturas aninhadas.
document.addEventListener('pointerover', (evento) => {
  mostrar(evento.target.closest('[data-tag]'));
});
document.addEventListener('focusin', (evento) => {
  mostrar(evento.target.closest('[data-tag]'));
});
document.addEventListener('pointerdown', (evento) => {
  mostrar(evento.target.closest('[data-tag]'));
});
document.addEventListener('keydown', (evento) => {
  if (evento.key === 'Escape') mostrar(null);
});
