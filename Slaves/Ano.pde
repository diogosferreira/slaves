class Ano {

  int ano, traficados, mortos;
  Bola bolaT = new Bola('t'), bolaM = new Bola('m');

  Ano(int a, int t, int m) {
    this.ano = a;
    this.traficados = t;
    this.mortos = m;
  }

  void desenhaMortosTraficadosFD(int minXY, int maxXY, float angulo) {

    float compLinhaMortos = map(mortos, 0, 110000, maxXY, minXY);
    bolaM.posX = compLinhaMortos * cos(angulo);
    bolaM.posY = compLinhaMortos * sin(angulo);
    
    float compLinhaTraficados = map(traficados, 0, 110000, maxXY, minXY);
    bolaT.posX = compLinhaTraficados * cos(angulo);
    bolaT.posY = compLinhaTraficados * sin(angulo);

    pushMatrix();
    strokeWeight(1.5);
    fill(255,0,0);
    stroke(255,0,0);
    bolaM.desenhaBola();
    line(maxXY * cos(angulo), maxXY * sin(angulo), compLinhaMortos * cos(angulo), compLinhaMortos * sin(angulo));
    fill(0);
    stroke(0);
    bolaT.desenhaBola();
    line(compLinhaMortos * cos(angulo), compLinhaMortos * sin(angulo), compLinhaTraficados * cos(angulo), compLinhaTraficados * sin(angulo));
    popMatrix();
  
  }

  void desenhaMortosTraficadosDF(int minXY, int maxXY, float angulo) {

    float compLinhaMortos = map(mortos, 0, 112000, minXY, maxXY);
    bolaM.posX = compLinhaMortos * cos(angulo);
    bolaM.posY = compLinhaMortos * sin(angulo);
    
    float compLinhaTraficados = map(traficados, 0, 112000, minXY, maxXY);
    bolaT.posX = compLinhaTraficados * cos(angulo);
    bolaT.posY = compLinhaTraficados * sin(angulo);

    pushMatrix();
    fill(255,0,0);
    stroke(255,0,0);
    bolaM.desenhaBola();
    line(minXY * cos(angulo), minXY * sin(angulo), compLinhaMortos * cos(angulo), compLinhaMortos * sin(angulo));
    fill(0);
    stroke(0);
    bolaT.desenhaBola();
    line(compLinhaMortos * cos(angulo), compLinhaMortos * sin(angulo), compLinhaTraficados * cos(angulo), compLinhaTraficados * sin(angulo));
    popMatrix();
  
  }
}