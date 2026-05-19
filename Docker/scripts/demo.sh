#!/bin/bash

AZUL='\033[0;34m'
VERDE='\033[0;32m'
AMARELO='\033[1;33m'
NC='\033[0m'
NEGRITO='\033[1m'

clear

echo -e "${AZUL}${NEGRITO}"
cat << 'EOF'
╔══════════════════════════════════════════════════════════════════╗
║        HARMONYOS (OpenHarmony) - Demonstração AV2                ║
║              Sistema Operacional da Huawei                       ║
╚══════════════════════════════════════════════════════════════════╝
EOF
echo -e "${NC}"

echo -e "${VERDE}${NEGRITO}O que é o HarmonyOS?${NC}"
echo ""
echo "HarmonyOS (鸿蒙OS) é um sistema operacional desenvolvido pela"
echo "Huawei, lançado em 2019. Projetado para ser um SO distribuído,"
echo "capaz de rodar em múltiplos tipos de dispositivos:"
echo ""
echo "  • Smartphones e tablets"
echo "  • Smart TVs e monitores"
echo "  • Smartwatches e wearables"
echo "  • Sistemas automotivos"
echo "  • Dispositivos IoT (sensores, câmeras, roteadores)"
echo ""
echo -e "${AMARELO}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""
echo -e "${VERDE}${NEGRITO}Scripts disponíveis para a apresentação:${NC}"
echo ""
echo "  bash scripts/estrutura.sh   → Estrutura de diretórios do SO"
echo "  bash scripts/kernel.sh      → Arquitetura do Kernel"
echo "  bash scripts/linguagem.sh   → Linguagens de programação"
echo ""
echo -e "${AMARELO}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""
