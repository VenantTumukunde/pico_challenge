.PHONY: main
main: flag

FLAG := "picoCTF{Th!s-!s-asc!!-3ncod!ng-4nd-d3cod!ng}"

artifacts.tar.gz: flag.txt
	tar czvf $@ $^

flag:
	@echo "$(FLAG)" > flag

metadata.json:
	@echo "Creating the metadata file..."
	@echo "{\"flag\":\"$(FLAG)\"}" > metadata.json

clean:
	rm -f flag
