# Sua Casa Mais Segura em 3 Passos — Landing Page

Landing page de alta conversão para o guia gratuito **"Sua Casa Mais Segura em
3 Passos"** (automação para segurança residencial), construída do zero, sem
frameworks e sem dependências externas.

## Estrutura

```
index.html                                        # Landing page completa (AIDA)
assets/img/capa-guia-760.webp                     # Capa otimizada (desktop, 80 KB)
assets/img/capa-guia-480.webp                     # Capa otimizada (mobile, 45 KB)
assets/img/og-capa.jpg                            # Imagem de compartilhamento (WhatsApp/redes)
guia_brinde_sua_casa_mais_segura_em_3_passos.pdf  # O guia entregue no CTA
vercel.json                                       # Cache do navegador (Vercel)
.htaccess                                         # Cache do navegador (Apache/cPanel)
.claude/skills/landing-page-alta-conversao/       # Skill reutilizável p/ qualquer produto
```

## Metodologia aplicada

- **AIDA**: Atenção (herói + headline), Interesse (dores + 3 passos),
  Desejo (benefícios + autoridade), Ação (FAQ + CTA final + sticky mobile).
- **Psicologia das cores**: azul-marinho (confiança/segurança — a emoção do
  nicho), dourado (valor/premium), **laranja exclusivo nos CTAs** (ação e
  contraste máximo) e verde (confirmação/garantia).
- **Copy persuasiva**: headline com benefício + número + quebra de objeção
  ("sem obra e sem mensalidade"), subheadline com o mecanismo (hub →
  interruptor → alerta no celular), benefícios como resultado, FAQ que quebra
  objeções.
- **Prova social**: a seção de depoimentos está preparada porém oculta no
  HTML — preencha com depoimentos REAIS dos primeiros leitores e ative.

## Performance

- Capa do e-book: **1,7 MB → 45–80 KB** (WebP + `srcset` responsivo).
- CSS crítico inline, fontes do sistema, favicon em data URI: **a página
  faz apenas 2 requisições** (HTML + imagem do herói).
- `preload` + `fetchpriority="high"` na imagem do herói (LCP rápido).
- `loading="lazy"` para conteúdo abaixo da dobra.
- **Cache do navegador**: assets com `max-age=1 ano, immutable`; HTML sempre
  revalidado (via `vercel.json` na Vercel ou `.htaccess` em Apache).
- **CDN**: publicando na Vercel (ou Netlify/Cloudflare Pages/GitHub Pages),
  os arquivos são redistribuídos automaticamente pelos servidores de borda
  (edge) mais próximos de cada visitante. Em hospedagem tradicional, coloque
  o Cloudflare (plano gratuito) na frente do domínio.

## Como publicar (Vercel)

1. Importe este repositório em https://vercel.com/new
2. Framework preset: **Other** (site estático, sem build)
3. Deploy — o `vercel.json` já aplica os headers de cache

## Skill incluída

`.claude/skills/landing-page-alta-conversao/SKILL.md` — metodologia completa
para gerar landing pages de alta conversão **para qualquer produto** usando o
Claude Code: briefing, psicologia das cores, AIDA, regras de copy, performance
(compressão, cache, CDN), SEO e checklist final. Basta pedir uma landing page
que a skill é ativada.
