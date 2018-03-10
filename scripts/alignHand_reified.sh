mkdir -p ~/git-workspace/learnlab/data/GoldAlignment_noWiki_reified/jamr_aligned/
mkdir -p ~/git-workspace/learnlab/data/GoldAlignment_noWiki/jamr_aligned/

${JAMR_HOME}/scripts/ALIGN_WithTok.sh < ~/git-workspace/learnlab/data/GoldAlignment_noWiki_reified/dev.txt > ~/git-workspace/learnlab/data/GoldAlignment_noWiki_reified/jamr_aligned/dev.txt.aligned

${JAMR_HOME}/scripts/ALIGN_WithTok.sh < ~/git-workspace/learnlab/data/GoldAlignment_noWiki_reified/test.txt > ~/git-workspace/learnlab/data/GoldAlignment_noWiki_reified/jamr_aligned/test.txt.aligned

