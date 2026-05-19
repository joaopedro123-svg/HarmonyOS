#!/bin/bash

AZUL='\033[0;34m'
VERDE='\033[0;32m'
AMARELO='\033[1;33m'
CIANO='\033[0;36m'
NC='\033[0m'
NEGRITO='\033[1m'

clear

echo -e "${AZUL}${NEGRITO}"
echo "╔══════════════════════════════════════════════════════════════════╗"
echo "║             ESTRUTURA DO HARMONYOS (OpenHarmony)                 ║"
echo "╚══════════════════════════════════════════════════════════════════╝"
echo -e "${NC}"

echo -e "${VERDE}${NEGRITO}Árvore de diretórios:${NC}"
echo ""
tree harmony_os/ --charset=UTF-8 2>/dev/null || find harmony_os -type d | sort | sed 's|[^/]*/|  |g'
echo ""

echo -e "${AMARELO}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""
echo -e "${VERDE}${NEGRITO}Explicação de cada componente:${NC}"
echo ""

echo -e "${CIANO}kernel/${NC}"
echo "  Núcleo do sistema. Suporta três kernels diferentes:"
echo "  ├── liteos_a/  → LiteOS-A: câmeras IP, roteadores (suporte a MMU)"
echo "  ├── liteos_m/  → LiteOS-M: microcontroladores IoT (menos de 10KB)"
echo "  └── linux/     → Linux: smartphones e tablets de alto desempenho"
echo ""

echo -e "${CIANO}base/${NC}"
echo "  Serviços fundamentais da plataforma:"
echo "  ├── global/      → Internacionalização e suporte a idiomas"
echo "  ├── hiviewdfx/   → Logs, diagnósticos e depuração (DFX)"
echo "  ├── security/    → Framework de segurança e controle de permissões"
echo "  └── startup/     → Inicialização do sistema (processo init)"
echo ""

echo -e "${CIANO}foundation/${NC}"
echo "  Serviços de sistema de alto nível:"
echo "  ├── aafwk/          → Ability Application Framework (ciclo de vida de apps)"
echo "  ├── ace/            → Adaptive Component Engine (motor de UI declarativa)"
echo "  ├── appexecfwk/     → Framework de execução de aplicações"
echo "  └── communication/  → Conectividade: WiFi, Bluetooth, NFC"
echo ""

echo -e "${CIANO}applications/${NC}"
echo "  Apps nativas do sistema (câmera, configurações, launcher, galeria)"
echo ""

echo -e "${CIANO}drivers/${NC}"
echo "  Hardware Driver Foundation (HDF): drivers de hardware unificados"
echo ""

echo -e "${CIANO}device/${NC}"
echo "  Configurações e adaptações específicas por dispositivo/fabricante"
echo ""

echo -e "${CIANO}build/${NC}"
echo "  Sistema de build baseado em GN + Ninja (ferramenta hb)"
echo ""

echo -e "${CIANO}third_party/${NC}"
echo "  Bibliotecas externas: OpenSSL, cJSON, FreeType, zlib, etc."
echo ""

echo -e "${CIANO}utils/${NC}"
echo "  Utilitários comuns compartilhados entre todos os componentes"
echo ""

echo -e "${CIANO}vendor/${NC}"
echo "  Código e configurações específicas do fabricante do hardware"
echo ""

echo -e "${AMARELO}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""
echo -e "${VERDE}${NEGRITO}Camadas da arquitetura HarmonyOS (de baixo para cima):${NC}"
echo ""
echo "  ┌──────────────────────────────────────────────────────┐"
echo "  │              APLICAÇÕES (applications/)              │"
echo "  ├──────────────────────────────────────────────────────┤"
echo "  │       FRAMEWORK (foundation/ + base/)                │"
echo "  ├──────────────────────────────────────────────────────┤"
echo "  │   ABSTRAÇÃO DE HARDWARE - HDF (drivers/)             │"
echo "  ├──────────────────────────────────────────────────────┤"
echo "  │   KERNEL: LiteOS-M | LiteOS-A | Linux (kernel/)      │"
echo "  ├──────────────────────────────────────────────────────┤"
echo "  │                    HARDWARE                          │"
echo "  └──────────────────────────────────────────────────────┘"
echo ""
