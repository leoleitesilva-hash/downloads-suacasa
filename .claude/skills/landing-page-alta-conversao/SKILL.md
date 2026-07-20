---
name: landing-page-alta-conversao
description: >
  Constrói landing pages de alta conversão do zero para QUALQUER produto
  (infoproduto, e-book, guia, curso, serviço ou produto físico), aplicando
  a estrutura AIDA (Atenção, Interesse, Desejo, Ação), psicologia das cores,
  headline + subheadline persuasivas, copywriting de conversão e otimização
  de performance (compressão de imagens, cache do navegador e CDN).
  Use sempre que o usuário pedir uma landing page, página de vendas, página
  de captura, página de download, LP, "página que converte", ou quiser
  divulgar/vender/entregar um produto pela internet.
---

# Landing Page de Alta Conversão — Metodologia Completa

Você vai construir uma landing page **do zero**, em um único arquivo HTML
autossuficiente, seguindo esta metodologia. Funciona para qualquer produto.

## Etapa 0 — Briefing (pergunte antes de codar)

Se a conversa ainda não tiver essas respostas, pergunte (uma pergunta por vez):

1. **Produto**: o que é? (e-book, curso, serviço, produto físico…)
2. **Público**: quem compra/baixa? Qual a DOR principal dessa pessoa?
3. **Oferta**: gratuito (captura/download) ou pago (venda)? Preço?
4. **Ação única**: qual É o objetivo da página? (baixar PDF, comprar,
   chamar no WhatsApp, preencher formulário). **Uma LP = um único objetivo.**
5. **Autoridade**: quem é o autor/marca? Credenciais reais?
6. **Prova social**: existem depoimentos/números REAIS? (nunca inventar)
7. **Materiais**: já existe capa, fotos, logo, cores da marca?

## Etapa 1 — Psicologia das Cores (escolha ANTES de codar)

Escolha a emoção primeiro; a cor vem depois:

| Emoção desejada | Cor base | Nichos típicos |
|---|---|---|
| Confiança, segurança, proteção | Azul-marinho / azul | Segurança, finanças, saúde, tecnologia, jurídico |
| Saúde, natureza, equilíbrio | Verde | Bem-estar, nutrição, sustentabilidade |
| Energia, apetite, paixão | Vermelho | Comida, fitness, promoções |
| Luxo, sofisticação | Preto + dourado | Premium, mentoria high-ticket |
| Criatividade, espiritualidade | Roxo | Educação, autoconhecimento, beleza |
| Alegria, otimismo, valor | Amarelo/dourado | Destaques e selos em qualquer nicho |

**Regras fixas:**
- **CTA sempre em cor de AÇÃO com contraste máximo** contra o fundo:
  laranja ou verde vibrante sobre fundos escuros/azuis; o que importa mais
  que a cor em si é o CONTRASTE (botão que "salta" da página).
- A cor do CTA não pode ser usada em mais nenhum elemento grande da página.
- Verde para checkmarks, garantias e selos de confiança.
- Máximo 3 cores principais + neutros. Poluição visual mata conversão.

## Etapa 2 — Estrutura AIDA (ordem obrigatória das seções)

### A — ATENÇÃO (acima da dobra; 8 em 10 visitantes só leem isso)
1. **Barra de urgência** (opcional): oferta por tempo limitado, edição, bônus.
2. **Badge/selo** contextualizando o nicho.
3. **HEADLINE (H1)**: benefício principal + especificidade + sem jargão.
   Fórmulas que funcionam:
   - "[Resultado desejado] em [tempo/passos] sem [maior objeção]"
   - "Como [público] consegue [resultado] mesmo [obstáculo]"
   - Número + benefício: "3 Passos para [resultado]"
4. **SUBHEADLINE**: expande a promessa, explica COMO (mecanismo) e para QUEM.
5. **CTA primário** (botão de contraste) + micro-confiança embaixo
   ("✓ Download imediato · ✓ Sem cadastro" ou "✓ Garantia de 7 dias").
6. **Imagem do produto/mockup** (a "prova visual" da oferta).

### I — INTERESSE (o problema)
- Seção de DOR: 3 cards com as dores mais fortes do público (emocional).
- Seção "o que você vai receber/aprender": módulos, passos ou capítulos
  em cards numerados. Concretude vende.

### D — DESEJO (a transformação)
- **Benefícios** em bullets com checkmark verde: sempre RESULTADO, não
  característica ("alerta no celular em tempo real", não "sensor Zigbee").
- **Autoridade**: quem é o autor, credenciais reais, anos de experiência.
- **Prova social**: depoimentos REAIS com nome. Se ainda não existem,
  criar a seção oculta/comentada no HTML para preencher depois — NUNCA
  inventar depoimentos.
- **Garantia** (produto pago): 7/15/30 dias, risco zero, selo verde.

### A — AÇÃO (fechar)
- **FAQ** com 4–6 perguntas que quebram as objeções reais (preço,
  dificuldade, tempo, "funciona pra mim?", suporte).
- **CTA final** repetido, com senso de urgência honesto e garantia visível.
- CTA deve aparecer no mínimo 3× na página: topo, meio (após benefícios
  ou no sticky mobile) e final.
- **Sticky CTA no mobile**: barra fixa no rodapé que aparece após rolar o herói.

## Etapa 3 — Regras de Copywriting

- Frases curtas. Vocabulário simples. Zero jargão técnico no H1.
- Falar com "você", nunca "os clientes".
- Benefício > característica, sempre.
- Especificidade gera credibilidade ("em 3 passos", "em 15 minutos").
- Urgência/escassez apenas se for VERDADEIRA.
- Nunca fabricar estatísticas, depoimentos ou números de clientes.
- Uma única ação por página — remover menu de navegação e links de fuga
  (o único link externo aceitável é um "próximo passo"/upsell no final).

## Etapa 4 — Performance (obrigatório)

1. **Comprimir imagens**: converter para WebP (qualidade 75–80) com Pillow
   ou cwebp; gerar 2 tamanhos (480w mobile, 760–900w desktop) e usar
   `srcset` + `sizes`. Meta: imagem do herói < 100 KB.
2. **Herói otimizado (LCP)**: `<link rel="preload" as="image">` +
   `fetchpriority="high"` na imagem principal; `width`/`height` explícitos
   (evita layout shift).
3. **Lazy loading**: `loading="lazy"` + `decoding="async"` em toda imagem
   abaixo da dobra.
4. **Zero dependências externas**: CSS crítico inline no `<head>`, fontes
   do sistema (nada de Google Fonts), JS vanilla mínimo, favicon em data URI.
   A página deve fazer o mínimo possível de requisições.
5. **Cache do navegador**: criar `vercel.json` (Vercel/Netlify) E `.htaccess`
   (Apache/cPanel) com:
   - imagens/assets versionados: `Cache-Control: public, max-age=31536000, immutable`
   - HTML: `max-age=0, must-revalidate`
   - PDF/arquivos entregáveis: `max-age=86400, stale-while-revalidate`
6. **CDN**: hospedar em Vercel, Netlify, Cloudflare Pages ou GitHub Pages —
   todos redistribuem os arquivos automaticamente entre servidores de borda
   (edge) próximos do visitante. Documentar isso no README. Se o host for
   tradicional, orientar a colocar o Cloudflare (plano gratuito) na frente.
7. **Meta de carregamento**: página completa < 3 segundos em 4G;
   peso total acima da dobra < 300 KB.

## Etapa 5 — SEO e compartilhamento

- `<title>` com benefício + nome do produto (< 60 caracteres).
- `<meta name="description">` persuasiva (< 155 caracteres).
- Open Graph completo (`og:title`, `og:description`, `og:image` 1200×630)
  + `twitter:card` — o link bonito no WhatsApp aumenta cliques.
- JSON-LD (`schema.org`): `Product`, `DigitalDocument` ou `Course` conforme
  o caso, com `author`/`offers`.
- HTML semântico: um único `<h1>`, hierarquia de headings correta,
  `alt` descritivo em toda imagem.
- Acessibilidade: contraste AA no texto, `prefers-reduced-motion` respeitado.

## Etapa 6 — Checklist final (verificar antes de entregar)

- [ ] Headline comunica o benefício em menos de 5 segundos?
- [ ] CTA visível acima da dobra sem rolar (desktop E mobile)?
- [ ] Uma única ação na página inteira?
- [ ] Cores: base emocional certa + CTA com contraste máximo?
- [ ] Imagens em WebP com srcset, herói < 100 KB?
- [ ] Cache configurado (vercel.json + .htaccess)?
- [ ] OG image aparece ao compartilhar no WhatsApp?
- [ ] Responsivo: testar em 375px, 768px e 1280px de largura?
- [ ] Nenhum dado, número ou depoimento inventado?
- [ ] Sticky CTA funcionando no mobile?

## Entregáveis padrão

```
index.html          # LP completa, autossuficiente
assets/img/         # imagens WebP otimizadas + og-image
vercel.json         # cache/CDN (Vercel)
.htaccess           # cache (Apache)
README.md           # como publicar, checklist de conversão, próximos passos
```
