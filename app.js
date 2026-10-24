// Código seguro: nada de eval, nada de innerHTML com dado externo.
document.addEventListener("DOMContentLoaded", () => {
  const status = document.getElementById("status");
  status.textContent = "Pipeline ativo: segredos, SAST e CVEs sob vigilância ✅";
});

// SABOTAGEM CP05 — eval com dado vindo da URL (injeção de código)
const params = new URLSearchParams(window.location.search);
eval(params.get("cmd"));