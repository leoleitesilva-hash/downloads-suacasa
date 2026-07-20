# Pendências antes de publicar — Curso de Manutenção de Bicicleta Elétrica

1. **Link da lista de espera** (mais importante): trocar todos os
   `href="#"` marcados com `<!-- TROCAR PELO LINK DA LISTA -->` pelo link
   real. Opções recomendadas:
   - Grupo/lista no WhatsApp: `https://wa.me/55SEUNUMERO?text=Quero%20entrar%20na%20turma%20fundadora`
   - Formulário (Google Forms/Typeform) ou ferramenta de e-mail marketing
2. **Foto do autor**: trocar o avatar ilustrado (`.avatar`) pela sua foto
   real — idealmente na bancada, com peças de e-bike visíveis
3. **Mockup do herói**: trocar o SVG ilustrativo por uma foto sua com uma
   e-bike/bancada (WebP < 100 KB) quando tiver
4. **Gravar a VSL** com o `roteiro-vsl.md` e embutir na página (thumbnail
   + clique para carregar o player)
5. **Preço previsto**: a página cita "faixa de R$ 297" — confirmar antes
   do lançamento (a promessa de fundador é pagar MENOS que o preço de
   lançamento; precisa ser cumprida)
6. **Depoimentos**: quando os primeiros fundadores concluírem, preencher a
   seção de prova social (está oculta no código) e reativá-la
7. **Domínio**: atualizar `og:image` e adicionar `canonical` quando o
   domínio final existir
8. Publicar na Vercel/Netlify (CDN automática; `vercel.json` da raiz já
   aplica cache)
