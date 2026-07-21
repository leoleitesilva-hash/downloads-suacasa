# 🚀 Instalação dos Chatbots na sua VPS

Passo a passo pra subir a stack completa na sua VPS:

- **Evolution API** — conecta o WhatsApp (lê o QR Code igual ao WhatsApp Web)
- **Typebot** — onde você monta os fluxos dos chatbots arrastando blocos
- **Postgres + Redis** — bancos de dados (automáticos, você não mexe)
- **Caddy** — gera HTTPS sozinho (certificado grátis)

Requisitos: VPS com **Ubuntu 22.04+**, **2 GB de RAM ou mais**, e um **domínio** seu.

---

## Passo 1 — Apontar os subdomínios

No painel do seu domínio (Registro.br, Cloudflare, Hostinger…), crie **3 registros do tipo A** apontando pro IP da sua VPS:

| Subdomínio | Serve pra |
|---|---|
| `api.seudominio.com.br` | Evolution API (WhatsApp) |
| `typebot.seudominio.com.br` | Typebot Builder (onde você monta os bots) |
| `bot.seudominio.com.br` | Typebot Viewer (onde os bots rodam) |

Aguarde alguns minutos pra propagação do DNS.

## Passo 2 — Instalar o Docker na VPS

Conecte na VPS por SSH e rode:

```bash
curl -fsSL https://get.docker.com | sh
```

## Passo 3 — Baixar esta pasta na VPS

```bash
git clone https://github.com/leoleitesilva-hash/downloads-suacasa.git
cd downloads-suacasa/chatbots/vps
```

## Passo 4 — Configurar o .env

```bash
cp .env.exemplo .env
nano .env
```

Preencha:
- os **3 subdomínios** que você criou no Passo 1;
- as **senhas/chaves** — gere cada uma com `openssl rand -hex 16` (o `TYPEBOT_ENCRYPTION_SECRET` precisa ter exatamente 32 caracteres — o comando acima já gera nesse tamanho);
- o **SMTP**: o Typebot faz login por link enviado no e-mail. Com Gmail, use uma [senha de app](https://myaccount.google.com/apppasswords). Alternativa grátis: [Brevo](https://www.brevo.com).

Salve com `Ctrl+O`, `Enter`, e saia com `Ctrl+X`.

## Passo 5 — Subir tudo

```bash
docker compose up -d
```

A primeira vez demora alguns minutos (baixa as imagens). Confira se está tudo rodando:

```bash
docker compose ps
```

Todos os serviços devem aparecer como `running`.

## Passo 6 — Conectar seu WhatsApp

1. Abra `https://api.seudominio.com.br/manager` no navegador.
2. Entre com a `EVOLUTION_API_KEY` do seu `.env`.
3. Crie uma instância (ex.: `suacasa`) e escaneie o **QR Code** com o WhatsApp do número que vai atender (WhatsApp → Aparelhos conectados).

> Dica: use um número dedicado pro bot, não seu número pessoal.

## Passo 7 — Montar o primeiro chatbot

1. Abra `https://typebot.seudominio.com.br` e faça login com o e-mail admin (chega um link no seu e-mail).
2. Crie um fluxo novo usando o roteiro de [`../chatbot-entrega-brinde.md`](../chatbot-entrega-brinde.md) — cada etapa do roteiro vira um bloco no Typebot. Pra respostas com IA, adicione o bloco **OpenAI/IA** e cole o prompt do arquivo.
3. No Typebot, em **Share/Compartilhar**, ative a integração **WhatsApp** e conecte com a Evolution API usando:
   - URL: `https://api.seudominio.com.br`
   - API Key: a `EVOLUTION_API_KEY` do `.env`
   - Instância: o nome criado no Passo 6.

Pronto: quem mandar mensagem pro número cai no fluxo do bot. 🎉

---

## Comandos úteis

```bash
docker compose logs -f evolution-api   # ver logs do WhatsApp
docker compose logs -f typebot-builder # ver logs do Typebot
docker compose restart                 # reiniciar tudo
docker compose pull && docker compose up -d  # atualizar versões
```

## Problemas comuns

| Sintoma | Causa provável | Solução |
|---|---|---|
| Site não abre / erro de certificado | DNS ainda não propagou | Aguarde e confira o registro A com `ping api.seudominio.com.br` |
| Login do Typebot não chega no e-mail | SMTP errado | Confira usuário/senha de app no `.env` e rode `docker compose restart typebot-builder` |
| QR Code não aparece | Evolution ainda subindo | `docker compose logs -f evolution-api` e aguarde |
| WhatsApp desconecta | Celular ficou sem internet por muito tempo | Reconecte pelo manager (a sessão fica salva no volume) |
