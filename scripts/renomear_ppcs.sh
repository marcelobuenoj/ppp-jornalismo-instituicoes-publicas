#!/bin/bash
# ============================================================
# Script de renomeação dos PPCs de Jornalismo
# Padrão: SIGLA-UF-ANO.pdf
# Gerado automaticamente com validação cruzada de datas
# ============================================================

set -e  # Para na primeira falha

# ╔══════════════════════════════════════════════════════════════╗
# ║  ARQUIVOS COM PROBLEMA — REVISÃO MANUAL NECESSÁRIA         ║
# ╚══════════════════════════════════════════════════════════════╝

# ⚠ PROBLEMA: Fundação Universidade Federal de Rondônia.pdf
#   → Conteúdo é da UFRN (Natal, 2016), não da UNIR. Arquivo duplicado/trocado. EXCLUIR ou substituir pelo PPC correto da UNIR.
#   Evidência: Capa diz 'UFRN – Universidade Federal do Rio Grande do Norte'
#   Evidência: Data na capa: Maio – 2016
# AÇÃO SUGERIDA: Substituir pelo arquivo correto
# git rm "Fundação Universidade Federal de Rondônia.pdf"

# ⚠ PROBLEMA: Universidade Federal Fluminense.pdf
#   → Conteúdo é da UFV (Viçosa, MG, 2010), não da UFF. Arquivo nomeado incorretamente.
#   Evidência: Capa diz 'UFV - Universidade Federal de Viçosa'
#   Evidência: Data: AGOSTO – 2010
# AÇÃO SUGERIDA: Substituir pelo arquivo correto
# git rm "Universidade Federal Fluminense.pdf"

# ⚠ PROBLEMA: Universidade do Estado de Mato Grosso.pdf
#   → Conteúdo é PPC de Engenharia Civil da UNEMAT, não de Jornalismo.
#   Evidência: Resolução 030/2022 – CONEPE: 'Projeto Pedagógico do Curso de Engenharia Civil'
# AÇÃO SUGERIDA: Substituir pelo arquivo correto
# git rm "Universidade do Estado de Mato Grosso.pdf"

# ⚠ PROBLEMA: Universidade Federal de Santa Maria resumido.pdf
#   → Não é PPC. É a Ata nº27/2024 do Colegiado de Curso sobre oferta EaD provisória (6 págs).
#   Evidência: Capa: 'ATA Nº27/2024 DO COLEGIADO DE CURSO - 03/10/2024'
# AÇÃO SUGERIDA: Excluir
# git rm "Universidade Federal de Santa Maria resumido.pdf"


# ╔══════════════════════════════════════════════════════════════╗
# ║  RENOMEAÇÕES VALIDADAS                                     ║
# ╚══════════════════════════════════════════════════════════════╝

# FURB (SC) — Ano: 2019
#   ✓ Capa: 'BLUMENAU, Março de 2019'
#   ✓ Metadado CreationDate: 2019
#   ✓ Metadado ModDate: 2019
#   Nota: Municipal
git mv "Universidade Regional de Blumenau.pdf" "FURB-SC-2019.pdf"

# UEL (PR) — Ano: 2023
#   ✓ Resolução: 'CEPE/CA 003/2023'
#   ✓ Texto: 'implantado a partir do ano letivo de 2023'
#   ✓ Metadado: 2023
#   Nota: Resolução CEPE/CA 003/2023
git mv "Universidade Estadual de Londrina.pdf" "UEL-PR-2023.pdf"

# UEMG (MG) — Ano: 2022
#   ✓ Capa: 'DIVINÓPOLIS – 2022'
#   ✓ Metadado CreationDate: 2022
#   ✓ Metadado ModDate: 2022
#   Nota: Divinópolis
git mv "Universidade do Estado de Minas Gerais.pdf" "UEMG-MG-2022.pdf"

# UEPB (PB) — Ano: 2016
#   ✓ Capa: 'Campina Grande (PB) / 2016'
#   ✓ Corpo: 'December, 2016'
#   ✓ Capa: '2016' (3x)
#   Nota: Campina Grande
git mv "Universidade Estadual da Paraíba.pdf" "UEPB-PB-2016.pdf"

# UEPG (PR) — Ano: 2015
#   ✓ Resolução: '26 DE FEVEREIRO DE 2015'
#   ✓ Texto: 'efeitos retroativos a 1º de janeiro de 2015'
#   ✓ Metadado: 2015
#   Nota: Resolução CEPE 005/2015
git mv "Universidade Estadual de Ponta Grossa.pdf" "UEPG-PR-2015.pdf"

# UERJ (RJ) — Ano: 2013
#   ✓ Capa: '2013'
#   ✓ Metadado: 2023 (digitalização posterior)
#   Nota: PPC Comunicação Social (Jornalismo e RP)
git mv "Universidade do Estado do Rio de Janeiro.pdf" "UERJ-RJ-2013.pdf"

# UERN (RN) — Ano: 2020
#   ✓ Resolução: '02 de dezembro de 2020'
#   ✓ Homologação: '30 de novembro de 2023'
#   ✓ Metadado: 2023
#   Nota: Resolução 79/2020. Homologação 2023. Campus Mossoró
git mv "Universidade do Estado do Rio Grande do Norte.pdf" "UERN-RN-2020.pdf"

# UESB (BA) — Ano: 2017
#   ✓ Texto: 'Vitória da Conquista, 19 setembro de 2017'
#   ✓ Metadado CreationDate: 2018 (finalização)
#   Nota: Projeto de criação do curso. Vitória da Conquista
git mv "UNVERSIDADE ESTADUAL DO SUDOESTE DA BAHIA.pdf" "UESB-BA-2017.pdf"

# UESPI (PI) — Ano: 2023
#   ✓ Capa: 'Picos (PI), março de 2023'
#   ✓ Metadado ModDate: 2023
#   Nota: Campus Professor Barros Araújo, Picos
git mv "Universidade Estadual do Piauí.pdf" "UESPI-PI-2023.pdf"

# UFAC (AC) — Ano: 2013
#   ✓ Capa: 'Outubro 2013'
#   ✓ Texto: adequação às DCN 2013
#   ✓ Metadado CreationDate: 2021 (digitalização posterior)
git mv "UNIVERSIDADE FEDERAL DO ACRE - UFAC.pdf" "UFAC-AC-2013.pdf"

# UFAL (AL) — Ano: 2014
#   ✓ Capa: 'Agosto de 2014'
#   ✓ Metadado: 2015 (finalização digital posterior)
git mv "UNIVERSIDADE FEDERAL DO ALAGOAS.pdf" "UFAL-AL-2014.pdf"

# UFAM (AM) — Ano: 2022
#   ✓ Capa: '2022'
#   ✓ Metadado CreationDate: 2022
#   ✓ Metadado ModDate: 2022
#   Nota: Turno diurno
git mv "UNIVERSIDADE FEDERAL DO AMAZONAS - DIURNO 2022.pdf" "UFAM-AM-2022.pdf"

# UFC (CE) — Ano: 2019
#   ✓ Capa: 'FORTALEZA / 2019'
#   ✓ Metadado CreationDate: 2019
git mv "UNIVERSIDADE FEDERAL DO CEARÁ.pdf" "UFC-CE-2019.pdf"

# UFES (ES) — Ano: 2023
#   ✓ Capa: 'Ano Versão: 2023'
#   ✓ Metadado ModDate: 2023
git mv "Universidade Federal do Espírito Santo.pdf" "UFES-ES-2023.pdf"

# UFG (GO) — Ano: 2015
#   ✓ Capa: 'DEZEMBRO DE 2015'
#   ✓ Ficha catalográfica: '2015'
#   ✓ Metadado: 2019 (acesso posterior)
git mv "UNIVERSIDADE FEDERAL DE GOIÁS.pdf" "UFG-GO-2015.pdf"

# UFJF (MG) — Ano: 2022
#   ✓ Resolução: '75/2022' (4x)
#   ✓ Capa anterior: 2018 (versão superada)
#   ✓ Metadado: sem data útil
#   Nota: Reforma Curricularização da Extensão, Resolução 75/2022
git mv "Universidade Federal de Juiz de Fora.pdf" "UFJF-MG-2022.pdf"

# UFMA (MA) — Ano: 2007
#   ✓ Capa: 'São Luís – Ma. / 2007'
#   ✓ Metadado: 2014 (digitalização posterior)
#   Nota: PPC de Comunicação Social (Jornalismo, Rádio e TV, RP)
git mv "Universidade Federal do Maranhão.pdf" "UFMA-MA-2007.pdf"

# UFMG (MG) — Ano: 2015
#   ✓ Capa: '2º SEMESTRE DE 2015'
#   ✓ Metadado: 2018 (digitalização posterior)
git mv "Universidade Federal de Minas Gerais.pdf" "UFMG-MG-2015.pdf"

# UFMS (MS) — Ano: 2022
#   ✓ Resolução: '22 de novembro de 2022'
#   ✓ Capa: '2022' (múltiplas)
#   ✓ Metadado: 2022
#   Nota: Resolução 97-JORN/GRAD/FAALC/UFMS
git mv "Universidade Federal de Mato Grosso do Sul.pdf" "UFMS-MS-2022.pdf"

# UFMT (MT) — Ano: 2017
#   ✓ Capa: 'Campus Universitário de Cuiabá / 2017'
#   ✓ Metadado: 2019 (digitalização posterior)
#   Nota: PPC vigência 2018 a 2025
git mv "Universidade Federal de Mato Grosso.pdf" "UFMT-MT-2017.pdf"

# UFOP (MG) — Ano: 2023
#   ✓ Capa: 'Julho de 2023'
#   ✓ Metadado CreationDate: 2023
#   Nota: Campus Mariana
git mv "UNIVERSIDADE FEDERAL DE OURO PRETO.pdf" "UFOP-MG-2023.pdf"

# UFPA (PA) — Ano: 2020
#   ✓ Resolução: '19 de fevereiro de 2020'
#   ✓ Metadado: 2020
#   ✓ Capa: 2020 (7 ocorrências)
#   Nota: Comunicação Social – Jornalismo. Resolução 5.284/2020
git mv "Universidade Federal do Pará.pdf" "UFPA-PA-2020.pdf"

# UFPE (PE) — Ano: 2025
#   ✓ Capa: 'Caruaru, 2025'
#   ✓ Metadado ModDate: 2025
#   Nota: Reforma parcial do PPC. Campus Agreste (Caruaru). Comunicação Social
git mv "Universidade Federal de Pernambuco.pdf" "UFPE-PE-2025.pdf"

# UFPI (PI) — Ano: 2005
#   ✓ Capa: '2005' (ano isolado)
#   ✓ Texto: 'implantado em 2005'
#   ✓ Portaria 2003 referenciada
#   Nota: Comunicação Social – Jornalismo. Versão antiga
git mv "Universidade Federal do Piauí 2.pdf" "UFPI-PI-2005.pdf"

# UFPI (PI) — Ano: 2018
#   ✓ Página 1 (OCR): 'Resolução Nº 233/18'
#   ✓ Página 1 (OCR): 'Teresina, 11 de outubro de 2018'
#   Nota: Documento escaneado (200 págs). Resolução 233/18. Campus Petrônio Portella
git mv "Universidade Federal do Piauí.pdf" "UFPI-PI-2018.pdf"

# UFPR (PR) — Ano: 2015
#   ✓ Capa: '2015'
#   ✓ Metadado: 2017 (quando o curso de fato iniciou)
#   Nota: Criação do curso autônomo a partir de 2017
git mv "Universidade Federal do Paraná.pdf" "UFPR-PR-2015.pdf"

# UFPel (RS) — Ano: 2015
#   ✓ Capa: 'Pelotas, RS / 2015'
#   ✓ Metadado: 2017 (digitalização posterior)
#   Nota: Currículo 2
git mv "Universidade Federal de Pelotas.pdf" "UFPel-RS-2015.pdf"

# UFRB (BA) — Ano: 2013
#   ✓ Capa: '12/04/2013'
#   ✓ Metadado CreationDate: 2013
#   ✓ Metadado ModDate: 2013
#   Nota: Comunicação Social – Jornalismo. Cachoeira. Data: 12/04/2013
git mv "Universidade Federal do Recôncavo da Bahia - UFRB.pdf" "UFRB-BA-2013.pdf"

# UFRGS (RS) — Ano: 2023
#   ✓ Capa: 'PORTO ALEGRE, ABRIL DE 2023'
#   ✓ Metadado: sem data útil no CreationDate
git mv "Universidade Federal do Rio Grande do Sul.pdf" "UFRGS-RS-2023.pdf"

# UFRJ (RJ) — Ano: 2018
#   ✓ Capa: '2018 / Revisão 2022.1'
#   ✓ Metadado: 2022 (versão revisada)
#   Nota: Revisão 2022.1
git mv "UNIVERSIDADE FEDERAL DO RIO DE JANEIRO.pdf" "UFRJ-RJ-2018.pdf"

# UFRN (RN) — Ano: 2016
#   ✓ Capa: 'Maio – 2016'
#   ✓ Metadado ModDate: 2020 (acesso posterior)
git mv "Universidade Federal do Rio Grande do Norte.pdf" "UFRN-RN-2016.pdf"

# UFRR (RR) — Ano: 2024
#   ✓ Capa PPC: '2024'
#   ✓ Decisão: 'janeiro de 2025'
#   ✓ Metadado: 2025
#   Nota: Decisão 001/2025-CENS aprovando PPC de 2024
git mv "Universidade Federal de Roraima.pdf" "UFRR-RR-2024.pdf"

# UFRRJ (RJ) — Ano: 2017
#   ✓ Capa: 'Dezembro/2017'
#   ✓ Metadado: 2020 (acesso posterior)
#   Nota: Documento é o PDI 2018-2022 (dezembro/2017), não PPC específico. Info do curso a partir da p.51
git mv "Universidade Federal Rural do Rio de Janeiro.pdf" "UFRRJ-RJ-2017-PDI.pdf"

# UFS (SE) — Ano: 2015
#   ✓ Capa: 'PROJETO PEDAGÓGICO DO CURSO DE JORNALISMO 2015'
#   ✓ Metadado: 2023 (acesso posterior)
git mv "Universidade Federal de Sergipe.pdf" "UFS-SE-2015.pdf"

# UFSB (BA) — Ano: 2023
#   ✓ Capa: 'Porto Seguro / 2023'
#   Nota: Porto Seguro
git mv "UNIVERSIDADE FEDERAL DO SUL DA BAHIA.pdf" "UFSB-BA-2023.pdf"

# UFSC (SC) — Ano: 2015
#   ✓ Capa: '2015 (Atualizado em agosto de 2021)'
#   ✓ Metadado: 2021 (última atualização)
#   Nota: Atualizado em agosto de 2021
git mv "Universidade Federal de Santa Catarina.pdf" "UFSC-SC-2015.pdf"

# UFSJ (MG) — Ano: 2024
#   ✓ Capa PPC: 'SÃO JOÃO DEL-REI, MG / 2024'
#   ✓ Resolução: '05 de fevereiro de 2025'
#   ✓ Metadado: 2025
#   Nota: Comunicação Social – Jornalismo. Resolução 005/2025 aprovando PPC de 2024
git mv "Universidade Federal de São João del-Rei.pdf" "UFSJ-MG-2024.pdf"

# UFSM (RS) — Ano: 2022
#   ✓ Capa: 'JORNALISMO / SANTA MARIA / 2022'
#   ✓ Metadado: 2024 (acesso posterior)
#   Nota: Implementação 2014/01
git mv "Universidade Federal de Santa Maria completo.pdf" "UFSM-RS-2022.pdf"

# UFT (TO) — Ano: 2022
#   ✓ Resolução: '07 de dezembro de 2022'
#   ✓ Capa: '2022' (múltiplas)
#   ✓ Metadado: 2024 (acesso posterior)
#   Nota: Atualização 2022 (Resolução 68/2022)
git mv "UNIVERSIDADE FEDERAL DO TOCANTINS.pdf" "UFT-TO-2022.pdf"

# UFV (MG) — Ano: 2017
#   ✓ Capa: 'VIÇOSA – MG / 2017'
#   Nota: Comunicação Social – Jornalismo
git mv "Universidade Federal de Viçosa.pdf" "UFV-MG-2017.pdf"

# UNEB (BA) — Ano: 2012
#   ✓ Capa: 'JUAZEIRO / 2012'
#   ✓ Metadado: 2013 (digitalização posterior)
#   Nota: Comunicação Social – Jornalismo em Multimeios. Campus III Juazeiro
git mv "UNIVERSIDADE DO ESTADO DA BAHIA.pdf" "UNEB-BA-2012.pdf"

# UNESP (SP) — Ano: 2021
#   ✓ Título: 'Roteiro para Apresentação do Projeto Político Pedagógico (2021)'
#   ✓ Referência a PPP 2020 como antecessor
#   Nota: FAAC Bauru. Roteiro PPP 2021, alteração curricular
git mv "Universidade Estadual Paulista.pdf" "UNESP-SP-2021.pdf"

# UNICENTRO (PR) — Ano: 2022
#   ✓ Capa: '2022'
#   ✓ Metadado CreationDate: 2022
#   ✓ Metadado ModDate: 2022
#   Nota: Guarapuava
git mv "Universidade Estadual do Centro Oeste.pdf" "UNICENTRO-PR-2022.pdf"

# UNIFAP (AP) — Ano: 2010
#   ✓ Capa: '28 de outubro de 2010'
#   ✓ Metadado: 2013 (digitalização posterior)
#   Nota: Comunicação Social – Jornalismo
git mv "UNIVERSIDADE FEDERAL DO AMAPÁ – UNIFAP.pdf" "UNIFAP-AP-2010.pdf"

# UNIFESSPA (PA) — Ano: 2018
#   ✓ Capa: '2018' (2x)
#   ✓ Metadado CreationDate: 2018
#   ✓ Metadado ModDate: 2019
#   Nota: Campus Rondon do Pará
git mv "UNIVERSIDADE FEDERAL DO SUL E SUDESTE DO PARÁ.pdf" "UNIFESSPA-PA-2018.pdf"

# UNIPAMPA (RS) — Ano: 2022
#   ✓ Capa: 'São Borja / Julho, 2022'
#   ✓ Metadado: 2024 (acesso posterior)
#   Nota: São Borja
git mv "UNIVERSIDADE FEDERAL DO PAMPA.pdf" "UNIPAMPA-RS-2022.pdf"

# UNIR (RO) — Ano: 2023
#   ✓ Resolução: '21 de dezembro de 2023'
#   ✓ Capa PPC: 2023
#   ✓ Metadado: 2023
#   Nota: Resolução 617/2023 + PPC anexo (mesmo conteúdo do anterior com resolução de aprovação)
git mv "Fundação Universidade Federal de Rondônia2.pdf" "UNIR-RO-2023-resolucao.pdf"

# UNIR (RO) — Ano: 2023
#   ✓ Capa: 'PORTO VELHO / 2023'
#   ✓ Metadado ModDate: 2023
git mv "Fundação Universidade Federal de Rondônia1.pdf" "UNIR-RO-2023.pdf"

# UnB (DF) — Ano: 2015
#   ✓ Capa: 'Julho, 2015'
#   ✓ Metadado CreationDate: 2015
git mv "Universidade de Brasília.pdf" "UnB-DF-2015.pdf"

# UnirG (TO) — Ano: 2021
#   ✓ Capa: 'FEVEREIRO/2021'
#   ✓ Metadado CreationDate: 2021
#   ✓ Metadado ModDate: 2021
#   Nota: Municipal. Fundação UnirG
git mv "Universidade de Gurupi.pdf" "UnirG-TO-2021.pdf"


git commit -m "Padroniza nomes dos PPCs: SIGLA-UF-ANO.pdf

Padrão de nomenclatura: SIGLA-UF-ANO.pdf
Ano = ano que consta na capa/resolução de aprovação do PPC.
Validação cruzada: capa + resolução + metadados do PDF.

Arquivos com problema (não renomeados):
- Fundação Universidade Federal de Rondônia.pdf (conteúdo é UFRN)
- Universidade Federal Fluminense.pdf (conteúdo é UFV)
- Universidade do Estado de Mato Grosso.pdf (Eng. Civil, não Jornalismo)
- Universidade Federal de Santa Maria resumido.pdf (ata, não PPC)
"