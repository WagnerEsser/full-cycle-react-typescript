# Projeto criado em React a partir de uma aula no canal Full Cycle

Aula: [React e TypeScript: Pontapé inicial do jeito certo](https://www.youtube.com/watch?v=kxoBhslDRcw&t=1469s)
Canal: [Full Cycle](https://www.youtube.com/channel/UCMUoZehUZBhLb8XaTc8TQrA)

### Anotações durante a aula

## Docker

Build do docker no diretório local, vai baixar a imagem especificada no arquivo Dockerfile:
> docker build -t full-cycle-react .

Para rodar:
> docker run -p 3000:3000 full-cycle-react

Só que a imagem do docker é imutável, deve-se criar um volume para manter sincronizado com o container (que é baseado na imagem):
> docker run -it -p 3000:3000 -v $(pwd):/home/node/app full-cycle-react
    > 3000:000 --> Uma é do docker e outra do OS.
    > it --> imperatividade na execução do terminal.

RUN vs ENTRPOINT vs CMD --> Maneiras de executar comandos dentro da imagem.

RUN --> Usado para executar comandos no processo de geração da imagem.
ENTRYOINT/ --> Após a imagem ser rodada. No processo do build não é executado.
CMD --> Com a imagem já rodando.

