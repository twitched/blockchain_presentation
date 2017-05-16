pandoc -t revealjs --template=template-revealjs.html \
	--standalone --section-divs \
  --variable theme="white" \
  --variable transition="none" \
	--variable highlight-style="github" \
  blockchain.markdown -o blockchain.html
