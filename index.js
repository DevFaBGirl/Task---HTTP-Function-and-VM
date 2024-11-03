const functions = require('@google-cloud/functions-framework');

functions.http('bellhooksHttp', (req, res) => {
  res.set('Content-Type', 'text/html');  
    res.send(`
    <html>
      <head>
        <style>
          body {
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #A8DADC; /* azul claro */
            color: #1D3557; /* azul escuro */
            text-align: center;
          }
          .content {
            max-width: 600px;
            padding: 20px;
            border-radius: 8px;
            background: #F1FAEE; /* fundo branco suave */
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
          }
          img {
            max-width: 100%;
            border-radius: 8px;
            margin-bottom: 20px;
          }
          p {
            color: #457B9D; 
          }
          em {
            color: #E63946; /* tom avermelhado */
          }
        </style>
      </head>
      <body>
        <div class="content">
          <img src="https://www.revistaanfibia.com/wp-content/uploads/2021/12/Bell-Hooks_01Port.jpg" alt="Bell Hooks" />
          <p>Amar faz isso. O amor nos empodera para viver plenamente e morrer bem. 
          <br> Então, a morte se torna não o fim da vida, mas uma parte dela.</p>
          <p><em>– bell hooks</em></p>
        </div>
      </body>
    </html>
  `);
});
