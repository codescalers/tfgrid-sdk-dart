.PHONY: unit_test_and_coverage

coverage:
	@rm -rf coverage && \
	flutter test --no-pub --coverage && \
	dart pub global run coverde filter --input ./coverage/lcov.info --output ./coverage/filtered.lcov.info --filters .g.dart && \
	dart pub global run coverde value -i ./coverage/filtered.lcov.info > ./coverage/result.txt
