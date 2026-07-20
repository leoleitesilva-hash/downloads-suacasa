---
name: landing-page-alta-conversao
description: >
  Skill universal para criar páginas de vendas e landing pages de alta
  conversão para QUALQUER produto (infoproduto, e-book, curso, videoaula,
  mentoria, SaaS, serviço, produto físico). Conduz uma entrevista guiada
  (tema/nicho → pesquisa de termos e público-alvo → produto e capa → foto/
  vídeo do autor com roteiro de VSL → prova social → preço → link de
  checkout Hotmart/plataforma) e aplica os princípios dos maiores
  especialistas em conversão: Value Equation (Hormozi), StoryBrand
  (Donald Miller), 7 gatilhos de Cialdini, Attention Ratio (Oli Gardner/
  Unbounce), fórmulas de headline (Ogilvy, 4U), empilhamento de bônus,
  ancoragem de preço, garantia/reversão de risco, psicologia das cores e
  performance (WebP, cache, CDN). Use sempre que o usuário pedir landing
  page, página de vendas, página de captura, LP, "página que converte",
  ou quiser vender/divulgar qualquer produto pela internet.
---

# Landing Page / Página de Vendas de Alta Conversão — Skill Universal

Fluxo completo: entrevista guiada → pesquisa de nicho → copy → página.
A copy vem antes do design. **Nunca invente dados, depoimentos ou números.**

## REGRAS DE OURO (valem para produção E para testes)

1. **O produto final é SEMPRE uma página HTML completa** (`index.html`
   autossuficiente, publicável) — nunca só um texto de copy ou um plano.
2. **Salvar em subpasta própria** com o slug do produto (ex.:
   `bolo-de-pote/index.html`). NUNCA sobrescrever um `index.html` já
   existente de outro produto no repositório.
3. **QA visual obrigatório antes de entregar** (ver Fase 11): screenshot
   da página em desktop e mobile — nenhuma página é entregue sem ter sido
   vista renderizada.
4. **Modo teste/simulação**: quando o usuário pedir um teste, responda a
   entrevista com respostas simuladas claramente rotuladas, e marque na
   página todo dado fictício com um selo visível `SIMULADO` — dado
   inventado jamais pode parecer real, nem em teste.
5. Ao final, entregue sempre o **relatório de pendências**: o que o
   usuário precisa trocar antes de publicar (link do checkout, foto real,
   capa real, depoimentos reais).

---

## FASE 0 — ENTREVISTA GUIADA (obrigatória; UMA pergunta por vez)

Conduza como um estrategista de lançamento. Não avance sem a resposta.

### Pergunta 1 — Tema e nicho
> "Qual é o tema do seu produto e em qual nicho ele está?"

**Assim que o usuário responder, faça imediatamente uma pesquisa breve na
web** (WebSearch) para levantar:
- Os **termos mais buscados** do nicho (palavras que o público usa — elas
  entram na headline, no SEO e na copy)
- O **público-alvo típico**: quem compra, faixa etária, dores principais,
  o que já tentou e não funcionou
- Como os concorrentes se posicionam

Apresente um mini-relatório ao usuário (termos + persona) e confirme:
"É esse público mesmo que você quer atingir?"

### Pergunta 2 — Produto existente
> "Você já tem o produto desenvolvido (e-book, curso, videoaula, mentoria)?
> Se sim, anexe o arquivo ou a capa aqui."

Com o material em mãos:
- **Extrair/recortar a capa** (Read no arquivo; recortar com Pillow)
- Fazer a **releitura da capa** para a página: recorte limpo, WebP
  otimizado, e se fizer sentido um mockup (e-book em ângulo, mockup de
  celular/notebook para curso)
- Ler o sumário/estrutura do produto para transformar módulos/capítulos
  na seção "o que você vai receber"

**SEM capa/arquivo anexado?** Não trave: gere um **mockup ilustrativo em
SVG inline** temático do produto (pote, livro, celular com curso…) com
comentário `<!-- TROCAR pela foto real -->`, e liste a troca no relatório
de pendências. Atenção: SVG inline SEMPRE com `width`/`height` explícitos
+ `style="width:100%;height:auto"` — sem isso o SVG colapsa e o herói fica
vazio (bug real encontrado em teste).

### Pergunta 3 — Foto e vídeo do autor
> "Me envie uma foto sua (do autor). Você tem ou pretende gravar um vídeo
> de vendas?"

- **Foto**: entra na seção de autoridade (gatilho de afeição + autoridade)
- **Sem foto anexada?** Avatar ilustrado como placeholder + comentário
  `<!-- TROCAR pela foto real -->` + item no relatório de pendências
- **Se o autor topa gravar vídeo**: gere um **roteiro de VSL de 2–3
  minutos** sobre o tema (vídeo de vendas aumenta conversão; estrutura
  abaixo na Fase 5). Adapte o roteiro ao tema/nicho pesquisado e entregue
  como `roteiro-vsl.md`.

### Pergunta 4 — Prova social
> "Você tem depoimentos, prints de resultados, avaliações ou números de
> alunos/clientes? Anexe o que tiver."

- Anexar os REAIS (prints recortados/otimizados). Produtos com avaliações
  convertem até 270% mais que produtos sem prova social.
- Sem prova social ainda? Seção fica pronta e oculta no código, e a
  autoridade do autor carrega a página. NUNCA inventar depoimento.

### Pergunta 5 — Preço e oferta
> "Qual o preço? Existe preço 'cheio' e preço promocional? Parcelamento?
> Tem bônus inclusos?"

- Coletar: preço âncora (de), preço real (por), parcelas ("12x de R$ X"),
  bônus com valor individual de cada um.

### Pergunta 6 — Link de checkout
> "Você já tem o link de pagamento (Hotmart, Kiwify, Eduzz, outra
> plataforma)?"

- **Todos os CTAs da página apontam para esse link.**
- Sem link ainda? Usar `#` com comentário `<!-- TROCAR PELO LINK DO
  CHECKOUT -->` e avisar o usuário no final.

---

## FASE 1 — A OFERTA — Value Equation (Alex Hormozi)

> **Valor = (Resultado dos Sonhos × Probabilidade Percebida) ÷ (Tempo × Esforço)**

| Variável | Na página |
|---|---|
| ↑ Resultado dos sonhos | Headline e imagens mostram o DEPOIS |
| ↑ Probabilidade | Prova social específica, autoridade, garantia, demonstração |
| ↓ Tempo | "em 3 passos", "acesso imediato", "resultados em X dias" |
| ↓ Esforço | "sem experiência", "passo a passo pronto", "método mastigado" |

Se a oferta é fraca, nenhuma copy salva: fortaleça com bônus, garantia
ousada e facilidade antes de escrever a página.

---

## FASE 2 — A MENSAGEM — StoryBrand (SB7)

**O cliente é o herói; o autor é o GUIA.** Dor em 3 camadas: externa
(prática), **interna (emocional — onde a venda acontece)** e filosófica
(o que é injusto). Todo bloco da página mapeia para: personagem → problema
→ guia (empatia + autoridade) → plano de 3 passos → CTA → fracasso evitado
→ sucesso. Bloco que não mapeia, corta.

---

## FASE 3 — HEADLINE (80% do investimento — Ogilvy)

5× mais gente lê a headline que o corpo. **Escreva 10+ variações usando os
termos mais buscados do nicho (Fase 0.1) e apresente as 3 melhores.**

**Teste 4U** (nota 1–4 cada; refazer se < 12): Útil, Urgente, Único,
Ultra-específico.

Fórmulas: `[Resultado] em [tempo/passos] sem [maior objeção]` ·
`Como [público] consegue [resultado] mesmo [obstáculo]` ·
`O único [categoria] que [diferencial]` · `Pare de [dor]. Comece a [resultado].`

Sempre resultado, nunca característica. Subheadline = mecanismo + para quem.

---

## FASE 4 — ESTRUTURA DA PÁGINA (padrão dos infoprodutores que mais vendem)

Ordem das seções (AIDA como espinha dorsal):

1. **Barra de urgência** (só se verdadeira) — oferta/bônus com prazo
2. **HERÓI (Atenção)**: headline + subheadline + **VSL ou mockup do
   produto** + CTA + micro-confiança ("compra segura · acesso imediato ·
   garantia de 7 dias"). Teste dos 5 segundos: o que é, pra quem, o que
   ganho, o que faço?
3. **Dor (Interesse)**: 3 cards com as dores do público (linguagem deles — PAS)
4. **Apresentação do produto**: mockup/releitura da capa + "o que você vai
   receber" (módulos/capítulos em cards numerados)
5. **Benefícios (Desejo)**: bullets de resultado com checkmark verde
6. **Prova social**: depoimentos reais com nome + prints de resultados
7. **Autoridade**: foto do autor + credenciais + história curta (guia)
8. **BÔNUS (empilhamento)**: cada bônus com nome, o que resolve e **valor
   individual** ("Bônus 1: Checklist X — R$ 97") → soma total ancorada
9. **PREÇO com ancoragem**: mostrar TUDO que está incluso antes do número;
   valor somado riscado → preço real; **parcelamento em destaque**
   ("12x de R$ 9,90"); CTA logo abaixo
10. **GARANTIA (reversão de risco)**: selo + texto ousado perto do preço
    ("7 dias; não gostou, devolvo tudo — o risco é meu")
11. **FAQ**: 4–6 objeções reais respondidas (ver Fase 6)
12. **CTA final**: urgência honesta + custo de não agir (1 parágrafo) +
    selos de compra segura
13. Rodapé mínimo (attention ratio 1:1 — nenhum link além do checkout)

### Roteiro de VSL (2–3 min) — quando o autor grava vídeo
1. **Gancho** (0–15s): pergunta que dói ou promessa específica com o termo
   mais buscado do nicho
2. **Identificação** (15–45s): "eu sei como é [dor interna]" — história curta
3. **Virada + mecanismo** (45–90s): o que descobriu, por que funciona
4. **Prova** (90–120s): resultado próprio ou de aluno (real)
5. **Oferta + bônus** (120–150s): o que recebe + garantia
6. **CTA com urgência** (150–180s): "clique no botão abaixo do vídeo"

---

## FASE 5 — GATILHOS MENTAIS (Cialdini + prática dos top sellers)

| Gatilho | Aplicação |
|---|---|
| Reciprocidade | Valor antes do pedido: amostra, aula grátis, checklist |
| Compromisso | Micro-sim antes do pedido grande |
| Prova social | Depoimentos, números reais, prints, avaliações |
| Autoridade | Credenciais, mídia, "criado por [especialista]" |
| Afeição | Foto real, história pessoal, linguagem do público |
| Escassez/Urgência | Prazo/vagas/bônus limitados — SOMENTE verdadeiros |
| Unidade | "Feito por alguém como você, para pessoas como você" |
| Ancoragem | Valor somado dos itens vs preço real; "de R$ X por R$ Y" |

3–4 gatilhos bem usados > todos gritando. Escassez falsa destrói confiança.

---

## FASE 6 — QUEBRA DE OBJEÇÕES

As 5 universais, todas respondidas na página:
1. "Não confio" → autoridade + prova + garantia + selos de compra segura
2. "Não funciona pra mim" → depoimentos de gente parecida + "mesmo que [obstáculo]"
3. "Está caro" → ancoragem + parcelamento + custo da inação
4. "Não tenho tempo" → ↓Tempo/↓Esforço da Value Equation
5. "Decido depois" → urgência verdadeira + o que perde adiando

FAQ: cada pergunta = objeção real; resposta termina puxando pra ação.

---

## FASE 7 — CTA

- Verbo + benefício, primeira pessoa: "QUERO MEU ACESSO AGORA" (CTAs
  específicos convertem até 202% mais que "Comprar"/"Enviar")
- Todos apontam para o **link de checkout** (Fase 0.6)
- Mínimo 3 ocorrências + sticky bar no mobile
- Micro-confiança grudada: garantia, compra segura, acesso imediato
- Elemento de MAIOR contraste da página

---

## FASE 8 — DESIGN E PSICOLOGIA DAS CORES

Emoção primeiro, cor depois: azul (confiança — finanças/saúde/tech/segurança),
verde (saúde/dinheiro), vermelho (energia/urgência), preto+dourado (premium),
roxo (transformação/educação), amarelo (valor/destaques).

Regras: CTA em cor de ação (laranja/verde) com contraste máximo, exclusiva
do botão; máximo 3 cores + neutros; direcionais apontando para o CTA;
espaço em branco ao redor do botão; hierarquia visual clara.

---

## FASE 9 — PERFORMANCE (velocidade É conversão; 1s a mais ≈ -7%)

1. Imagens WebP q75–80, 2 tamanhos + `srcset`; herói < 100 KB
2. `preload` + `fetchpriority="high"` no herói; `width/height` explícitos
3. `loading="lazy"` + `decoding="async"` abaixo da dobra
4. Zero dependências: CSS inline, fontes do sistema, JS vanilla, favicon data URI
5. Cache: `vercel.json` + `.htaccess` (assets `max-age=31536000, immutable`;
   HTML `must-revalidate`)
6. CDN: Vercel/Netlify/Cloudflare Pages (edge automático); host tradicional →
   Cloudflare grátis na frente
7. VSL: embed leve (thumbnail + clique carrega o player; nunca autoload de iframe)
8. Animações com IntersectionObserver + fallback sem JS + `prefers-reduced-motion`

---

## FASE 10 — SEO E COMPARTILHAMENTO

Title com termo mais buscado + benefício (<60); description persuasiva
(<155); OG completo + `og:image` 1200×630 (link bonito no WhatsApp);
JSON-LD `Product`/`Course` com `Offer` e preço; um `<h1>`; `alt` em tudo;
contraste AA.

**A og-image é obrigatória mesmo sem foto do produto**: gere com Pillow
(fundo na paleta da página + headline + preço) e salve em
`assets/img/og.jpg` (< 100 KB).

---

## FASE 11 — QA VISUAL (obrigatório antes de entregar)

Nenhuma página é entregue sem ser vista renderizada. Com Playwright
(Chromium em `/opt/pw-browsers/chromium`):

1. Screenshot **desktop 1280×800**: acima da dobra (teste dos 5 segundos)
2. Screenshot **mobile 375×720**: acima da dobra (CTA visível sem rolar?)
3. Screenshot da **seção de preço** (ancoragem + garantia aparecem juntas?)
4. Scroll no mobile: **sticky CTA aparece** após o herói?
5. Conferir: nenhuma imagem/SVG colapsada, nenhum texto estourando,
   contraste ok

Encontrou problema → corrige → screenshota de novo. Só então entrega,
enviando os screenshots ao usuário (SendUserFile).

---

## FASE 12 — CHECKLIST FINAL

- [ ] Entrevista completa (tema, pesquisa, produto, autor, prova, preço, checkout)?
- [ ] Termos mais buscados do nicho na headline e no title?
- [ ] Teste dos 5 segundos passa?
- [ ] Headline 4U ≥ 12?
- [ ] Attention ratio 1:1 (só o link do checkout)?
- [ ] Value Equation completa na página?
- [ ] Empilhamento de bônus com valores + ancoragem no preço?
- [ ] Parcelamento em destaque? Garantia perto do preço?
- [ ] 5 objeções respondidas? FAQ puxando pra ação?
- [ ] CTA 3+, primeira pessoa, contraste máximo, sticky mobile, link certo?
- [ ] Zero dado/depoimento inventado?
- [ ] Herói < 100 KB, página < 3s, cache + CDN configurados?
- [ ] OG image ok? Responsivo 375/768/1280?
- [ ] Roteiro de VSL entregue (se autor grava vídeo)?
- [ ] QA visual feito (screenshots desktop + mobile enviados ao usuário)?
- [ ] Placeholders/simulados marcados e listados no relatório de pendências?

## Entregáveis padrão (em subpasta com o slug do produto)

```
<slug-do-produto>/
├── index.html      # A PÁGINA HTML — produto final obrigatório, sempre
├── assets/img/     # capa releitura, foto autor, provas, og.jpg (WebP)
├── roteiro-vsl.md  # roteiro do vídeo de vendas (quando aplicável)
└── PENDENCIAS.md   # o que trocar antes de publicar (checkout, fotos,
                    # depoimentos reais, remoção dos selos SIMULADO)
vercel.json         # cache/CDN (raiz do projeto)
.htaccess           # cache Apache (raiz do projeto)
```

> Fontes: Hotmart (estrutura de página de vendas e checkout), Unbounce/
> Oli Gardner (Attention Ratio, CCD), CXL (Cialdini aplicado), Alex Hormozi
> ($100M Offers), Donald Miller (StoryBrand), Ogilvy/Masterson (headlines,
> 4U), Copyhackers (fórmulas), Cialdini (Influence/Pre-Suasion).
