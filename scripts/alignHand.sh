export JAMR_HOME="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." > /dev/null && pwd )"
mkdir -p ~/git-workspace/learnlab/data/GoldAlignment_noWiki/jamr_aligned/

${JAMR_HOME}/scripts/ALIGN_WithTok.sh < ~/git-workspace/learnlab/data/GoldAlignment_noWiki/dev.txt > ~/git-workspace/learnlab/data/GoldAlignment_noWiki/jamr_aligned/dev.txt.aligned

${JAMR_HOME}/scripts/ALIGN_WithTok.sh < ~/git-workspace/learnlab/data/GoldAlignment_noWiki/test.txt > ~/git-workspace/learnlab/data/GoldAlignment_noWiki/jamr_aligned/test.txt.aligned

