# 🛍️ Projeto dbt - ShoesBR

Este projeto modela os dados de um e-commerce fictício chamado **ShoesBR**, utilizando o **dbt (Data Build Tool)** para transformar, documentar e testar os dados de forma estruturada e analítica.

---


## 🌐 Visão Geral

O objetivo deste projeto é construir um **Data Warehouse analítico** organizado em camadas, permitindo análises confiáveis sobre clientes, produtos, vendas e estornos.

---
## 🧬 Diagrama Relacional das Tabelas de Origem

[![](https://mermaid.ink/img/pako:eNqtU11PwjAU_SvLfQbCCrixNyJiCAaN8mSWkGa9sEXWYtcacey_240B-4jGB_uy9J5zT8_9WAqBYAgeoJxGdCtp7HPLnGAXIVeYWOnpnp_5cmUFOlEiRrmOmPW0uGIvq-f58t7iNMZWkDImMUla8X0oeJuNMY12p2h2-uylYFqJlpciHqg_WZk9PE7yjCjAmvYHckbbyloGIU2wKd3swGzxo6MqNJ2s7ixGFdbZ75pyFalD06USiu7WFa_VntFDbAazjlGFgtVKQeNLcvFbLbN_qkXiRnO2rpdUOiwxiTQRvFlaCdJYaK4u7hsrdzx2uyI9j8azfKj49KGxFG321fmZXIIl9dyognvtzpnc9FGl_8FITb3mBDqwlREDb0N3CXbA6JhdN3coRuaDCtHsLOSZjMq3PCczSXvKX4WIwVNSmzQp9Da8iOh9PoXy371EpSkY5W3eZfAGLilEwEvhEzxikx4Z2mMycvr2kIxtgx7Ac256NhmO3f5gbDs2IW7Wga_i2X7PdUbZN8oHQtw?type=png)](https://mermaid.live/edit#pako:eNqtU11PwjAU_SvLfQbCCrixNyJiCAaN8mSWkGa9sEXWYtcacey_240B-4jGB_uy9J5zT8_9WAqBYAgeoJxGdCtp7HPLnGAXIVeYWOnpnp_5cmUFOlEiRrmOmPW0uGIvq-f58t7iNMZWkDImMUla8X0oeJuNMY12p2h2-uylYFqJlpciHqg_WZk9PE7yjCjAmvYHckbbyloGIU2wKd3swGzxo6MqNJ2s7ixGFdbZ75pyFalD06USiu7WFa_VntFDbAazjlGFgtVKQeNLcvFbLbN_qkXiRnO2rpdUOiwxiTQRvFlaCdJYaK4u7hsrdzx2uyI9j8azfKj49KGxFG321fmZXIIl9dyognvtzpnc9FGl_8FITb3mBDqwlREDb0N3CXbA6JhdN3coRuaDCtHsLOSZjMq3PCczSXvKX4WIwVNSmzQp9Da8iOh9PoXy371EpSkY5W3eZfAGLilEwEvhEzxikx4Z2mMycvr2kIxtgx7Ac256NhmO3f5gbDs2IW7Wga_i2X7PdUbZN8oHQtw)

## 🧱 Camadas de Transformação

O projeto segue a arquitetura moderna de camadas:

1. **Staging**:  
   - Realiza limpeza e padronização dos dados vindos das tabelas brutas (seeds).
   - Alinha nomes, tipos e estrutura para uso posterior.

2. **Intermediate**:  
   - Modelos normalizados, com joins básicos e formatação para uso intermediário.
   - Prepara os dados para agregações.

3. **Marts (Gold)**:  
   - Modelos finais para BI e análise de negócio.
   - Inclui métricas de faturamento, volume de vendas e comportamento de clientes.

---

## 📦 Requisitos

- Python 3.8+
- dbt-postgres >=1.9

Você pode instalar com:

```bash
pip install dbt-postgres
```


---

## 📊 Principais Modelos

| Modelo           | Descrição |
|------------------|-----------|
| `mart_clientes`  | Consolida informações dos clientes, total gasto e número de compras |
| `mart_produtos`  | Mostra o total vendido e o faturamento por produto |
| `mart_vendas`    | Junta vendas com estornos para análise financeira completa |

---

## 🚀 Como Executar

```bash
# Executa seeds
dbt seed

# Executa modelos
dbt run

# Executa testes
dbt test

# Gera documentação
dbt docs generate
dbt docs serve
```

---

## 🧠 Boas Práticas Usadas

- Uso de `persist_docs` para documentação no DW.
- Separação em camadas (`staging`, `intermediate`, `marts`).
- Tags `silver` e `gold` para facilitar automação.
- Testes de integridade (`not_null`, `unique`) definidos nos arquivos `schema.yml`.

---

## 📚 Documentação Interativa

Gere e visualize a documentação:

```bash
dbt docs generate
dbt docs serve
```

---

## 👟 Sobre o Projeto

Este projeto é uma simulação educacional voltada para ensino e prática de engenharia de dados com dbt. A marca **ShoesBR** é fictícia.

---
