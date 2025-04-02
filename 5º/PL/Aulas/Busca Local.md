- **Subida de Encosta:** avalia os vizinhos e vê em qual sentido sobe mais do que a posição atual. Ao chegar num ponto onde não é possível subir, admite-se que chegou no topo
-

```js
sucessoresDaMochila(Solução, Valor, N_sucessor)
  for(i = 0, i < N_sucessor, i++) {
    aux = substitui_1_0(Solução)
    va = avalia(aux)
    aux = inclui_item(aux, va)
  }
```
